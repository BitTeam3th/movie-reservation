<%@page import="dto.UserDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
List<HashMap<String, Object>> movieTimeLists = (List<HashMap<String, Object>>)request.getAttribute("movieTimeList");
List<String> movieTheaters = (List<String>)request.getAttribute("movieTheater");
UserDto loginUser = (UserDto) session.getAttribute("login");
if (loginUser == null) {
	loginUser = new UserDto();
}
%>
<!DOCTYPE html>
<html lang="ko">
<head>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
      <meta http-equiv="X-UA-Compatible" content="ie=edge">
      <title>영화예약 사이트</title>
      <link rel="icon" href="img/logo.png" type="image/x-icon">
      <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css">
      <link rel="stylesheet" href="css/style.css">
      <link rel="stylesheet" href="css/headerFooter.css">
      <link rel="stylesheet" href="css/reserve.css">
      <link rel="stylesheet" href="css/reserve2.css">
   
      <script src="./js/jQuery.js"></script>
      <!-- <script src="https://kit.fontawesome.com/c47106c6a7.js" crossorigin="anonymous"></script> -->
      <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
      <%if (loginUser.getEmail() == null) {
   	   %>
      <script type="text/javascript">
		function getContextPath() {
			var hostIndex = location.href.indexOf( location.host ) + location.host.length;
			return location.href.substring( hostIndex, location.href.indexOf('/', hostIndex + 1) );
	   	}
		location.href=getContextPath()+'/app?param=login';
      </script>
    	   <%
    	  	 } else {
    	   %>
      <script type="text/javascript">
    		   $('#mainLogout').show();
    		   $('#mainMypage').show();
    		   $('#mainLogin').hide();
    		   $('#mainRegi').hide();
      </script>
    	   <%
    		}
    	   %>
</head>
<body>   
   
   <header id="header"></header>
   <script src="./js/header.js"></script>

	<div class="wrap" id="wrap">
		<!-- <div>
			<div id="layer" style="background-color: black;">
				<div id="contents" class="contents_full contents_reserve"
					style="margin-top: 120px;"> -->
					<div class="wrap_reserve">
						<h2 class="hidden" style="text-align: center;">예매하기</h2>
						<div id="reserveStep02" class="section_step_con step02 active">
							<div class="article article_seat">
								<div class="group_top">
									<h4 class="tit">인원/좌석 선택</h4>
									<p class="txt" id="txtPeopleMaxcount">인원은 최대 8명까지 선택 가능합니다.</p>
								</div>
								<div class="inner">
									<%
									for (int i = 0; i < movieTheaters.size(); i++) {
									%>
									<div id="PersonSeatCount">
										<div class="select_num_people_wrap">
											<div class="movie_infor">
												<h6 class="hidden">예매 정보</h6>
												<span class="thm"><img
													src="<%=movieTimeLists.get(0).get("img_src")%>"></span>
												<div class="group_infor">
													<div class="bx_tit">
														<strong><%=movieTimeLists.get(0).get("title")%> </strong>
													</div>
												</div>
											</div>
											<div class="count_people">
												<ul>
													<li id="person_10" data-code="10" data-peple="성인"
														data-count="0"><strong class="tit">지점</strong><span
														class="bx_num" style="width:160px"><button class="btn_mins"
																id="Minus|10">감소</button>
															<div class="txt_num"><%=movieTheaters.get(i)%></div> </span></li>
													<li id="person_10" data-code="10" data-peple="성인"
														data-count="0" class="rightmargin"><strong class="tit">시간</strong><span
														class="bx_num"><button class="btn_mins"
																id="Minus|10">감소</button> <select name="time"
															class="txt_num">
																<%
																for (int j = 0; j < movieTimeLists.size(); j++) {
																	if (movieTimeLists.get(j).get("theater").equals(movieTheaters.get(i))) {
																%>
																<option value="<%=movieTimeLists.get(j).get("time")%>">
																	<%=movieTimeLists.get(j).get("time").toString().substring(4, 6)%>월
																	<%=movieTimeLists.get(j).get("time").toString().substring(6, 8)%>일
																	<%=movieTimeLists.get(j).get("time").toString().substring(8, 10)%>시
																	<%=movieTimeLists.get(j).get("time").toString().substring(10, 12)%>분
																	( <%=movieTimeLists.get(j).get("nowPerson")%> / <%=movieTimeLists.get(j).get("maxPerson")%> )
																</option>
																<%
																}
																}
																%>
														</select> </span></li>
													<li id="person_10" data-code="10" data-peple="성인"
														data-count="0"><strong class="tit">성인</strong><span
														class="bx_num"><button class="btn_mins"
																id="Minus|10">감소</button> <select name="personnel"
															class="txt_num">
																<option value="1">ㅤㅤ ㅤ1명ㅤㅤ ㅤ</option>
																<option value="2">ㅤㅤ ㅤ2명ㅤㅤ ㅤ</option>
																<option value="3">ㅤㅤ ㅤ3명ㅤㅤ ㅤ</option>
																<option value="4">ㅤㅤ ㅤ4명ㅤㅤ ㅤ</option>
																<option value="5">ㅤㅤ ㅤ5명ㅤㅤ ㅤ</option>
																<option value="6">ㅤㅤ ㅤ6명ㅤㅤ ㅤ</option>
																<option value="7">ㅤㅤ ㅤ7명ㅤㅤ ㅤ</option>
																<option value="8">ㅤㅤ ㅤ8명ㅤㅤ ㅤ</option>
														</select> </span></li>
													<li><a id="goReserv" href=""><img
															class="layerButton" src="img/bookButton.jpg"
															style="width: 150px; height: 45px"></a></li>
												</ul>
											</div>
										</div>
									</div>
									<%
									}
									%>
								</div>
							</div>
						</div>
					</div>
				<!-- </div>
			</div>
		</div> -->
	</div>


	<footer id="footer"></footer>
	<script src="./js/footer.js"></script>

	<script>
		var maskHeight = $(document).height();
		var maskWidth = $(window).width();

		$('#layer').css({
			'width' : maskWidth,
			'height' : maskHeight
		});
		$("#layer").css("position", "absolute");
		$("#layer").css(
				"top",
				Math.max(0,
						(($(window).height() - $("#layer").outerHeight()) / 2)
								+ $(window).scrollTop() - 100)
						+ "px");
		$("#layer").css(
				"left",
				Math.max(0,
						(($(window).width() - $("#layer").outerWidth()) / 2)
								+ $(window).scrollLeft())
						+ "px");

        $('#layer').css({ 'width': maskWidth, 'height': maskHeight });
        $("#layer").css("position", "absolute");
        $("#layer").css("top", Math.max(0, (($(window).height() - $("#layer").outerHeight()) / 2) + $(window).scrollTop() - 100) + "px");
        $("#layer").css("left", Math.max(0, (($(window).width() - $("#layer").outerWidth()) / 2) + $(window).scrollLeft()) + "px");
    </script>
        <%if (loginUser.getEmail() == null) {
   	   	%>
	<script>
			$('#mainLogin').show();
			$('#mainRegi').show();
			$('#mainMypage').hide();
			$('#mainLogout').hide();
    </script>
     	   <%
     	  	 } else {
     	   %>
	<script>
			$('#mainLogout').show();
			$('#mainMypage').show();
			$('#mainLogin').hide();
			$('#mainRegi').hide();
    </script>
     	   <%
     		}
        	%>
</body>
</html>