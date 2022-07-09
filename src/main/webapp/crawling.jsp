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
<h2>영화리스트 받아오기</h2>
<button type="button" id="getmovies">버튼</button>
<br><br>
<table class="movies" border="1">

</table>

<table class="movie" border="1">

</table>

<script type="text/javascript">
$(function () {
	
	
	$("#getmovies").click(function() {
		param = '{"MethodName":"GetMoviesToBe","channelType":"HO","osType":"Chrome","osVersion":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36","multiLanguageID":"KR","division":1,"moviePlayYN":"Y","orderType":1,"blockSize":100,"pageNo":1,"memberOnNo":""}';
		
		$.ajax({
			url:"https://www.lottecinema.co.kr/LCWS/Movie/MovieData.aspx",
			type:"post",
			/* headers: {
				"accept": "application/json",
				"Access-Control-Allow-Origin":"*"
			}, */
			data:{ "paramList": param},
			success:function(data){

				movies = JSON.parse(data)
				for (var i = 0; i < movies.Movies.ItemCount; i++) {
					if(movies.Movies.Items[i].MovieNameKR != "AD"){
						let buttontag = document.createElement('button');
						textNode = document.createTextNode("DB에 집어넣기");
						buttontag.name = "getmovie";
						buttontag.id = movies.Movies.Items[i].RepresentationMovieCode;
						buttontag.type = "button";
						buttontag.appendChild(textNode);
						
						let buttontag2 = document.createElement('button');
						textNode2 = document.createTextNode("시간 가져오기");
						buttontag2.name = "getmovietime";
						buttontag2.id = movies.Movies.Items[i].MovieNameKR;
						buttontag2.type = "button";
						buttontag2.appendChild(textNode2);
						
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
	
	// $("button[name=getmovie]").click(function() {
	$(document).on("click", "button[name=getmovie]", function() {
		
		param = '{"MethodName":"GetMovieDetailTOBE","channelType":"HO","osType":"Chrome","osVersion":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36","multiLanguageID":"KR","representationMovieCode":"' + $(this).attr('id') + '","memberOnNo":""}';
		
		$.ajax({
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
				
				genres = movie.Movie["MovieGenreNameKR"];
				for (var i = 1; i < 5; i++) {
					if(movie.Movie["MovieGenreNameKR"+i] != null && movie.Movie["MovieGenreNameKR"+i] != ""){
						genres = genres + ", " + movie.Movie["MovieGenreNameKR"+i];
					}
				}
				
				for (var i = 0; i < movie.Casting.Items.length; i++) {
					if (movie.Casting.Items[i].Role == "감독"){
						director = director + ", " + movie.Casting.Items[i].StaffName;
					} else if (movie.Casting.Items[i].Role == "배우"){
						actors = actors + ", " + movie.Casting.Items[i].StaffName;						
					}
				}
				actors = actors.trim();
				director = director.trim();
				actors = actors.substring(2);
				director = director.substring(2);
				
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
	
	
	$(document).on("click", "button[name=getmovietime]", function() {
		
		$.ajax({
			type:"post",
			url:"./moviecrawling?param=gettime",
			data:{	"title":$(this).attr('id') },
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