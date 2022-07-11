<%@page import="dto.UserDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
HashMap<String, Object> SeatLists = (HashMap<String, Object>) request.getAttribute("seatList");

List<String> movieTheaters = (List<String>) request.getAttribute("movieTheater");
UserDto loginUser = (UserDto) session.getAttribute("login");
if (loginUser == null) {
	loginUser = new UserDto();
}
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


<style type="text/css">
.seat_tit {
	position: unset;
}

.seat-row {
	display: flex;
}

.seatsss {
	display: flex;
	justify-content: center;
}

/* ------------------------------------- */
.chk_box {
	position: relative;
	display: block;
	overflow: hidden;
	width: 21px;
	height: 16px;
	line-height: 17px;
	background: #E8E8E8;
	color: #000;
	font-size: 10px;
	text-align: center;
	letter-spacing: -0.5px;
	box-sizing: border-box;
	border-radius: 7px 7px 2px 0px;
	font-family: 'Roboto', "Noto Sans KR";
	margin-right: 10px;
}

/* 기본 체크박스 숨기기 */
.chk_box input[type="checkbox"] {
	display: none;
}

/* 선택되지 않은 체크박스 스타일 꾸미기 */
.on {
	width: 21px;
	height: 20px;
	background: rgb(74, 255, 255);
	position: absolute;
	top: 0;
	left: 0;
}

.on:hover {
	cursor: pointer;
}

/* 선택된 체크박스 스타일 꾸미기 */
.chk_box input[type="checkbox"]:checked+.on {
	background: #f86480;
}

.on:after {
	content: "";
	position: absolute;
	display: none;
}

.chk_box input[type="checkbox"]:checked+.on:after {
	display: block;
}

.on:after {
	width: 6px;
	height: 10px;
	border: solid #fff;
	border-width: 0 2px 2px 0;
	-webkit-transform: rotate(45deg);
	-ms-transform: rotate(45deg);
	transform: rotate(45deg);
	position: absolute;
	left: 6px;
	top: 2px;
}

.chk_box input[type="checkbox"]:disabled+.on {
	background: #aaa;
}

.chk_box input[type="checkbox"]:disabled+.on:after {
	border: solid #aaa;
	border-width: 0 2px 2px 0;
}

.chk_box input[type="checkbox"]:disabled+.on:hover {
	cursor: default;
}

.seats-list {
	display: flex;
	justify-content: center;
}

/* 버튼 */
.btn {
	
}

a.btnView {
	display: block;
	width: 180px;
	height: 32px;
	margin: 0px auto 20px;
	background-color: #444;
	border-radius: 16px;
	font-weight: bold;
	font-size: 10px;
	font-family: "arial";
	color: #fff;
	line-height: 32px;
	text-align: center;
	background: linear-gradient(45deg, #4affff, #35e0f7);
	box-shadow: 5px 10px 20px rgba(0, 255, 255, 0.493);
}

.mseat_inner .mCustomScrollbar {
	height: 100%;
}

.mseat_inner {
	height: 100% !important;
	max-height: 1000px;
}

.mseat_wrap, .select_seat_wrap {
	background: rgba(255, 255, 255, 0.5);
	background-color: rgba(255, 255, 255, 0.5)!importannt;
}

.select_seat_wrap {
	margin-top: 10%;
}

.h5tag {
	text-align: center;
	font-size: x-large;
	margin: 10px auto;
}
</style>



<script src="./js/jQuery.js"></script>
<!-- <script src="https://kit.fontawesome.com/c47106c6a7.js" crossorigin="anonymous"></script> -->
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<%
if (loginUser.getEmail() == null) {
%>
<script type="text/javascript">
        function getContextPath() {
            var hostIndex = location.href.indexOf(location.host) + location.host.length;
            return location.href.substring(hostIndex, location.href.indexOf('/', hostIndex + 1));
        }
        location.href = getContextPath() + '/app?param=login';
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
	<script>
        var input = "<%=SeatLists.get("reservationFlag")%>
		";
		console.log(input);
		var fit_input = [];
		for (let i = 0; i < 11; i++) {
			fit_input[i] = input.substring(i * 10, (i + 1) * 10);
		}
		console.log(fit_input);
		/* for ( let i in fit_input ) {
		  document.write( '<p>' + fit_input[i] + '</p>' );
		} */
	</script>

	<div class="wrap" id="wrap">


		<div class="select_seat_wrap">
			<h5 class="hidden h5tag">좌석선택</h5>

			<div id="PersonSeatSelect"></div>

			<div id="container" class="seat_wrap">
				<article class="mseat_wrap">
					<div class="mseat_inner">

						<div class="mCustomScrollbar _mCS_1 mCS-autoHide mCS_no_scrollbar"
							data-mcs-theme="minimal-dark"
							style="position: relative; overflow: visible;">
							<div id="mCSB_1"
								class="mCustomScrollBox mCS-minimal-dark mCSB_vertical mCSB_outside"
								style="max-height: none;" tabindex="0">
								<div id="mCSB_1_container"
									class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y"
									style="position: relative; top: 0; left: 0;" dir="ltr">
									<div class="meat_door_pos" id="scrollWrap">
										<div class="mseat_hidden">

											<span class="title_screen1">SCREEN</span>
											<div class="">
												<p id="ticketMessageInfo"
													style="margin: 0px; text-align: end; font-size: 15px">좌석을
													클릭하세요.</p>
											</div>



											<div class="seats-list">
												<form method="get" action="reservation" id="frm">
													<input type="hidden" name="param" value="insert"> <input
														type="hidden" name="userId"
														value="<%=SeatLists.get("userId")%>"> <input
														type="hidden" name="movieId"
														value="<%=SeatLists.get("movieId")%>"> <input
														type="hidden" name="movieTimeId"
														value="<%=SeatLists.get("movieTimeId")%>"> <input
														type="hidden" name="personnel"
														value="<%=SeatLists.get("personnel")%>">
													<div class="seat-row" style="display: none">

														<label for="agree1" class="chk_box"> <input
															type="checkbox" id="agree1" /> <span class="on"></span>
														</label> <label for="agree2" class="chk_box"> <input
															type="checkbox" id="agree2" checked="checked"
															disabled="disabled" /> <span class="on"></span>
														</label> <label for="agree3" class="chk_box"> <input
															type="checkbox" id="agree3" checked="checked" /> <span
															class="on"></span>
														</label> <label for="agree4" class="chk_box"> <input
															type="checkbox" id="agree4" checked="checked" /> <span
															class="on"></span>
														</label> <label for="agree5" class="chk_box"> <input
															type="checkbox" id="agree5" checked="checked" /> <span
															class="on"></span>
														</label>
													</div>



													<%
													int count = 0;
													for (int i = 1; i <= 10; i++) {
													%>
													<div class="seat-row">
														<%
														for (int j = 1; j <= 10; j++) {
														%>
														<label for="<%=count%>" class="chk_box"><input
															class="cls_check" id="<%=count%>" type="checkbox"
															name="seatNum" value="<%=count%>" disabled=true><span
															class="on"></span></label>
														<%
														count += 1;
														}
														%>
													</div>
													<br />
													<%
													}
													%>
													<br /> <a id="id_btn_member11" href="#"
														onclick="return chk_form()" class="btnView">좌석 선택</a>
													<!-- <p><input type="submit" value="좌석 선택" ></p> -->
												</form>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</article>
			</div>
		</div>
	</div>
	<script>
		for (let i = 0; i < 100; i++) {
			if (input[i] == 0) {
				document.getElementById(i).disabled = false;

			} else if (input[i] == 1) {
				document.getElementById(i).checked = true;
			}
		}
	</script>


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
	</script>
	<%
	if (loginUser.getEmail() == null) {
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

	<script type="text/javascript">
		function chk_form() {
			document.getElementById('frm').submit();
		}
	</script>
</body>

</html>