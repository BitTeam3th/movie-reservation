<%@page import="java.util.Calendar"%>
<%@page import="dto.UserDto"%>
<%@page import="dto.ReservationDto"%>
<%@page import="java.util.List"%>
<%@page import="dao.ReservationDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
UserDto loginUser = (UserDto) session.getAttribute("login");
if (loginUser == null) {
	loginUser = new UserDto();
}
%>
<%
ReservationDao dao = ReservationDao.getInstance();
List<ReservationDto> list = dao.getReservationList(loginUser.getEmail());
Calendar cal = Calendar.getInstance();

%>

<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>영화예약 사이트</title>
<link rel="icon" href="img/logo.png" type="image/x-icon">
<link rel="stylesheet"
	href="https://unpkg.com/swiper/swiper-bundle.min.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/headerFooter.css">
<link rel="stylesheet" href="css/reserve.css">
<link rel="stylesheet" href="css/reserve2.css">

<script src="./js/jQuery.js"></script>
<!-- <script src="https://kit.fontawesome.com/c47106c6a7.js" crossorigin="anonymous"></script> -->
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<style type="text/css">
.ticket_list .ticket_info .ticket::after{
	width: 0px;
}
.ticket_list {
	padding:40px 50px 50px 205px;
}
</style>

</head>

<body>

	<header id="header"></header>
	<script src="./js/header.js"></script>

	<div class="wrap" id="wrap">
		<div class="ticket_list"
			style="overflow:scroll; height:60%; margin: 10% auto; width: 1000px; overflow-x: auto;">
			<%
			for (int i = 0; i < list.size(); i++) {
				ReservationDto reservation = list.get(i);
			%>
			<ul class="ticket_info new2020">
				<li class="new_day open cancel_csheck" id="key0">
					<div class="date">
						<%=cal.get(Calendar.YEAR)%>년
						<%=cal.get(Calendar.MONTH) + 1%>월
						<%=cal.get(Calendar.DATE)%>일
					</div>
					<button type="button" title="닫기" id="title0" aria-expanded="false">
						<strong class="tit"><%=reservation.getMovieTitle()%></strong> <span
							class="sum"><em>15,000</em>원</span><span class="num">예매번호
							<em>17051080</em>
						</span><span class="txt_col7 ty2">취소가능</span>
					</button>
					<div class="ticket" style="min-height:100px;">
						<div class="info_area">
							<div class="img">
								<img src="<%=reservation.getMovieImg()%>" alt="">
							</div>
							<div class="info">
								<dl>
									<dt>상영일시</dt>
									<dd>
										<%=reservation.getMovieTime()%>
									</dd>
								</dl>
								<dl>
									<dt>관람인원</dt>
									<dd><%=reservation.getPersonnel()%>
										명
									</dd>
								</dl>
								<div class="btn_wrap">
									<a href="#"
										onclick="deleteReservation(<%=reservation.getReservationId()%>)"
										class="btn_col3 ty5">결제취소</a>
								</div>
							</div>
						</div>

					</div>

				</li>
			</ul>
			</br>
			<%
			}
			%>
		</div>
	</div>


	<footer id="footer"></footer>
	<script src="./js/footer.js"></script>

	<script>
		//화면의 높이와 너비를 구한다.
		var maskHeight = $(document).height();
		var maskWidth = $(window).width();

		// //마스크의 높이와 너비를 화면 것으로 만들어 전체 화면을 채운다.
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
		
		function deleteReservation(id){
			location.href=getContextPath()+'/reservation?param=cancel&reservationid='+id;
		}
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
			$('#userName').children().text('<%=loginUser.getUsername()%> 님');
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