<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

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
</head>
<body>

	<header id="header"></header>
	<script src="./js/header.js"></script>

	<div class="wrap" id="wrap">
		<div>
			<div id="layer" style="background-color: black;">
				<div id="contents" class="contents_full contents_reserve"
					style="margin-top: 120px;">

					<div class="wrap_reserve">
						<h2 class="hidden">예매하기</h2>
						<div id="reserveStep02" class="section_step_con step02 active">

							<div class="article article_seat">
								<div class="group_top">
									<h4 class="tit">인원/좌석 선택</h4>
									<p class="txt" id="txtPeopleMaxcount">인원은 최대 8명까지 선택 가능합니다.</p>
								</div>
								<div class="inner">

									<div id="PersonSeatCount">
										<div class="select_num_people_wrap">
											<div class="movie_infor">
												<h6 class="hidden">예매 정보</h6>
												<span class="thm"><img
													src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202006/14702_103_1.jpg"></span>
												<div class="group_infor">
													<div class="bx_tit">
														<span class="ic_grade gr_12">관람가</span><strong>탑건:
															매버릭 (2D)</strong>
													</div>
												</div>
											</div>
											<div class="count_people">
												<ul>
													<li id="person_10" data-code="10" data-peple="성인"
														data-count="0"><strong class="tit">지점</strong><span
														class="bx_num"><button class="btn_mins"
																id="Minus|10">감소</button>
															<div class="txt_num">코엑스점</div> </span></li>
													<li id="person_10" data-code="10" data-peple="성인"
														data-count="0"><strong class="tit">시간</strong><span
														class="bx_num"><button class="btn_mins"
																id="Minus|10">감소</button>
															<div class="txt_num">09:00</div> </span></li>
													<li id="person_10" data-code="10" data-peple="성인"
														data-count="0"><strong class="tit">성인</strong><span
														class="bx_num"><button class="btn_mins"
																id="Minus|10">감소</button>
															<div class="txt_num">2명</div> </span></li>
													<li><img src="img/bookButton.jpg"
														style="width: 150px; height: 45px"></li>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>

						</div>

					</div>

				</div>
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
	</script>

</body>
</html>