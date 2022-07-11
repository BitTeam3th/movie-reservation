<%@page import="dto.UserDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
List<HashMap<String, Object>> movieTimeLists = (List<HashMap<String, Object>>) request.getAttribute("movieTimeList");
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

<script src="./js/jQuery.js"></script>
<!-- <script src="https://kit.fontawesome.com/c47106c6a7.js" crossorigin="anonymous"></script> -->
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<%
if (loginUser.getEmail() == null) {
%>
<script type="text/javascript">
	function getContextPath() {
		var hostIndex = location.href.indexOf(location.host)
				+ location.host.length;
		return location.href.substring(hostIndex, location.href.indexOf('/',
				hostIndex + 1));
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
	width: 20px;
	height: 20px;
	background: #ddd;
	position: absolute;
	top: 0;
	left: 0;
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
</style>
</head>
<body>

	<header id="header"></header>
	<script src="./js/header.js"></script>

	<div class="wrap" id="wrap">


		<div class="select_seat_wrap">
			<h5 class="hidden">좌석선택</h5>
			<div class="top_txt_info">
				<p id="ticketMessageInfo">좌석을 클릭하세요.</p>
			</div>
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

											<div class="showMap">
												<div class="floor_bx seatSet1">
													<span class="floor_tit" style="display: none;">9F</span>
													<div class="seatsss">
														<form method="get" action="form-action.html">
															<div class="seat-row">
																<span class="seat_tit" style="left: -30px; top: 0px">A</span>
																<label for="agree1" class="chk_box"> <input
																	type="checkbox" id="agree1" /> <span
																	class="on"></span>
																</label>
																<label for="agree2" class="chk_box"> <input
																	type="checkbox" id="agree2" checked="checked" disabled="disabled" /> <span
																	class="on"></span>
																</label>
																<label for="agree3" class="chk_box"> <input
																	type="checkbox" id="agree3" checked="checked" /> <span
																	class="on"></span>
																</label>
																<label for="agree4" class="chk_box"> <input
																	type="checkbox" id="agree4" checked="checked" /> <span
																	class="on"></span>
																</label>
																<label for="agree5" class="chk_box"> <input
																	type="checkbox" id="agree5" checked="checked" /> <span
																	class="on"></span>
																</label>
															</div>





															<span class="seat_tit" style="left: -30px; top: 0px">A</span>
															<label><input type="checkbox" name="color"
																value="red"> </label> <label><input
																type="checkbox" name="color" value="red" disabled>
															</label> <label><input type="checkbox" name="color"
																value="red"> </label> <label><input
																type="checkbox" name="color" value="red" disabled
																checked> </label> <label><input type="checkbox"
																name="color" value="red"> </label><br /> <span
																class="seat_tit" style="left: -30px; top: 0px">A</span>
															<label><input type="checkbox" name="color"
																value="red"> </label> <label><input
																type="checkbox" name="color" value="red"> </label> <label><input
																type="checkbox" name="color" value="red"> </label> <label><input
																type="checkbox" name="color" value="red"> </label> <label><input
																type="checkbox" name="color" value="red"> </label> <br />
															<span class="seat_tit" style="left: -30px; top: 0px">A</span>
															<label><input type="checkbox" name="color"
																value="red"> </label> <label><input
																type="checkbox" name="color" value="red"> </label> <label><input
																type="checkbox" name="color" value="red"> </label> <label><input
																type="checkbox" name="color" value="red"> </label> <label><input
																type="checkbox" name="color" value="red"> </label> <br />
															<span class="seat_tit" style="left: -30px; top: 0px">A</span>
															<label><input type="checkbox" name="color"
																value="red"> </label> <label><input
																type="checkbox" name="color" value="red"> </label> <label><input
																type="checkbox" name="color" value="red"> </label> <label><input
																type="checkbox" name="color" value="red"> </label> <label><input
																type="checkbox" name="color" value="red"> </label> <br />

															<p>
																<input type="submit" value="Submit"> <input
																	type="reset" value="Reset">
															</p>
														</form>
													</div>
													<span data-y="284px" data-x="305px" class="w_bottom"
														style="top: 280px; left: 716px;">상영관 출입문 입니다.</span>
												</div>
											</div>

										</div>
									</div>
								</div>
							</div>
							<div id="mCSB_1_scrollbar_vertical"
								class="mCSB_scrollTools mCSB_1_scrollbar mCS-minimal-dark mCSB_scrollTools_vertical"
								style="display: none;">
								<div class="mCSB_draggerContainer">
									<div id="mCSB_1_dragger_vertical" class="mCSB_dragger"
										style="position: absolute; min-height: 50px; height: 0px; top: 0px;">
										<div class="mCSB_dragger_bar" style="line-height: 50px;"></div>
									</div>
									<div class="mCSB_draggerRail"></div>
								</div>
							</div>
						</div>


					</div>
				</article>
			</div>

		</div>

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
</body>
</html>