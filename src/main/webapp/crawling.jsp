<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<style type="text/css">
table{
	width: 100%;
}
</style>

</head>
<body>
<!-- <button type="button" id="aaa">dfasdfasdf</button> -->

<h2>영화리스트 받아오기</h2>
<button type="button" id="getmovies">현재상영작</button>
<br><br>
<input type="date" id="movietime">

<table class="movies" border="1">

</table>

<table class="movie" border="1">

</table>

<script type="text/javascript">
$(function () {
	$("#aaa").click(function() {
		$.ajax({
			type:"post",
			url:"./moviecrawling?param=aaa",
			data:{},
			success:function( data ){
				alert("success");
			},
			error:function(){
				alert("error");
			}
		});
		
	});
	
	/* 현재 상영작 받아오기(롯데시네마 기준) */
	$("#getmovies").click(function() {
		
		/* 롯데시네마 상영작 받아오는 요청(요청에 따라 받아오는 값이 달라짐) */
		param = '{"MethodName":"GetMoviesToBe","channelType":"HO","osType":"Chrome","osVersion":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36","multiLanguageID":"KR","division":1,"moviePlayYN":"Y","orderType":1,"blockSize":100,"pageNo":1,"memberOnNo":""}';
		
		$.ajax({
			url:"https://www.lottecinema.co.kr/LCWS/Movie/MovieData.aspx",
			type:"post",
			/* 크로스오리진 에러때문에 요청이 받아오지 않을 수 있다. */
			/* headers: {
				"accept": "application/json",
				"Access-Control-Allow-Origin":"*"
			}, */
			data:{ "paramList": param},
			success:function(data){
				/* 받아온 데이터 json 변환 */
				movies = JSON.parse(data)
				for (var i = 0; i < movies.Movies.ItemCount; i++) {
					/* AD는 광고이므로 빼준다 */
					if(movies.Movies.Items[i].MovieNameKR != "AD"){
						/* DB에 영화 정보 넣어주는 버튼 */
						let buttontag = document.createElement('button');
						textNode = document.createTextNode("DB에 집어넣기");
						buttontag.name = "getmovie";
						buttontag.id = movies.Movies.Items[i].RepresentationMovieCode;
						buttontag.type = "button";
						buttontag.appendChild(textNode);
						/* 각 영화의 시간 가져오는 버튼(위쪽의 날짜를 설정해 주어야한다) */
						let buttontag2 = document.createElement('button');
						textNode2 = document.createTextNode("시간 가져오기");
						buttontag2.name = "getmovietime";
						buttontag2.id = movies.Movies.Items[i].MovieNameKR;
						buttontag2.type = "button";
						buttontag2.appendChild(textNode2);
						/* 받아온 영화데이터를 이름, 번호, 버튼 순으로 테이블에 추가해준다 */
						$(".movies").append(
							$("<tr></tr>").append(
								$("<td></td>").append(movies.Movies.Items[i].MovieNameKR + " "),
								$("<td></td>").append(movies.Movies.Items[i].RepresentationMovieCode + " "),
								$("<td></td>").append(buttontag),
								$("<td></td>").append(buttontag2)
							)
						)
					}
				}
			},
			error:function(){
				alert('error');
			}
		});
		
	});
	
	/* 개별 영화정보 DB에 넣기 */
	$(document).on("click", "button[name=getmovie]", function() {
		/* 롯데시네마 영화정보 받아오는 요청(요청에 따라 받아오는 값이 달라짐) */
		param = '{"MethodName":"GetMovieDetailTOBE","channelType":"HO","osType":"Chrome","osVersion":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36","multiLanguageID":"KR","representationMovieCode":"' + $(this).attr('id') + '","memberOnNo":""}';
		
		$.ajax({
			/* 크로스오리진 에러때문에 요청이 받아오지 않을 수 있다. */
			url:"https://www.lottecinema.co.kr/LCWS/Movie/MovieData.aspx",
			type:"post",
			/* headers: {
				"accept": "application/json",
				"Access-Control-Allow-Origin":"*"
			}, */
			data:{ "paramList": param},
			success:function(data){
				
				movie = JSON.parse(data)
				genres = "";
				director = "";
				actors = "";
				/* 장르가 여러개일 경우에 추가 */
				genres = movie.Movie["MovieGenreNameKR"];
				for (var i = 1; i < 5; i++) {
					if(movie.Movie["MovieGenreNameKR"+i] != null && movie.Movie["MovieGenreNameKR"+i] != ""){
						genres = genres + ", " + movie.Movie["MovieGenreNameKR"+i];
					}
				}
				/* 감독과 배우가 여러개일 경우에 추가 */
				for (var i = 0; i < movie.Casting.Items.length; i++) {
					if (movie.Casting.Items[i].Role == "감독"){
						director = director + ", " + movie.Casting.Items[i].StaffName;
					} else if (movie.Casting.Items[i].Role == "배우"){
						actors = actors + ", " + movie.Casting.Items[i].StaffName;						
					}
				}
				/* 데이터 정리 */
				actors = actors.trim();
				director = director.trim();
				actors = actors.substring(2);
				director = director.substring(2);
				
				/* 개별 영화정보 테이블에 추가 */
				$(".movie").append(
					$("<tr></tr>").append(
						$("<td></td>").append("제목"),
						$("<td></td>").append(movie.Movie.MovieNameKR + " ")
					),
					$("<tr></tr>").append(
						$("<td></td>").append("평점"),
						$("<td></td>").append(movie.Movie.ViewEvaluation + " ")
					),
					$("<tr></tr>").append(
						$("<td></td>").append("예매율"),
						$("<td></td>").append(movie.Movie.ViewRate + " ")
					),
					$("<tr></tr>").append(
						$("<td></td>").append("관객수"),
						$("<td></td>").append(movie.Movie.KOFCustCnt + " ")
					),
					$("<tr></tr>").append(
						$("<td></td>").append("장르"),
						$("<td></td>").append(genres)
					),
					$("<tr></tr>").append(
						$("<td></td>").append("개봉일"),
						$("<td></td>").append(movie.Movie.ReleaseDate + " ")
					),
					$("<tr></tr>").append(
						$("<td></td>").append("러닝타임"),
						$("<td></td>").append(movie.Movie.PlayTime + " ")
					),
					$("<tr></tr>").append(
						$("<td></td>").append("감독"),
						$("<td></td>").append(director)
					),
					$("<tr></tr>").append(
						$("<td></td>").append("출연"),
						$("<td></td>").append(actors)
					),
					$("<tr></tr>").append(
						$("<td></td>").append("줄거리"),
						$("<td></td>").append(movie.Movie.SynopsisKR + " ")
					),
					$("<tr></tr>").append(
						$("<td></td>").append("이미지"),
						$("<td></td>").append(movie.Movie.PosterURL + " ")
					)
				)
				
				/* DB에 넣어주기위해 컨트롤러에 전송 */
				$.ajax({
					type:"post",
					url:"./moviecrawling?param=getmovie",
					data:{	"title":movie.Movie.MovieNameKR,
							"content":movie.Movie.SynopsisKR,
							"rating":movie.Movie.ViewEvaluation,
							"ticketingRate":movie.Movie.ViewRate,
							"audienceNumber":movie.Movie.KOFCustCnt,
							"genre":genres,
							"openDate":movie.Movie.ReleaseDate,
							"runningTime":movie.Movie.PlayTime,
							"derector":director,
							"cast":actors,
							"poster":movie.Movie.PosterURL},
					success:function( data ){
						alert("success");
					},
					error:function(){
						alert("error");
					}
				});
			},
			error:function(){
				alert('error');
			}
		});
	});
	
	/* 영화시간 받아오는 버튼 */
	$(document).on("click", "button[name=getmovietime]", function() {
		
		$.ajax({
			type:"post",
			url:"./moviecrawling?param=gettime",
			data:{	"title":$(this).attr('id'),
					"month":$("#movietime").val().substring(5,7),
					"day":$("#movietime").val().substring(8,10) },
			success:function( data ){
				alert("success");
			},
			error:function(){
				alert("error");
			}
		});
	});
	
});
</script>

</body>
</html>