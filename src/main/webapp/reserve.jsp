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
</head>
<body>	
	
	<header id="header"></header>
	<script src="./js/header.js"></script>

	<div class="wrap" id="wrap" >
        <div>
        <div id="layer" style="background-color:black;">
        	<div id="contents" class="contents_full contents_reserve" style="margin-top: 120px;">

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
												<h6 class="hidden">예매 정보</h6><span class="thm"><img
														src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202006/14702_103_1.jpg"></span>
												<div class="group_infor">
													<div class="bx_tit"><span
															class="ic_grade gr_12">관람가</span><strong>탑건: 매버릭
															(2D)</strong></div>
												</div>
											</div>
											<div class="count_people">
												<ul>
													<li id="person_10" data-code="10" data-peple="성인" data-count="0">
														<strong class="tit">지점</strong><span class="bx_num"><button
																class="btn_mins" id="Minus|10">감소</button>
															<div class="txt_num">코엑스점</div>
														</span></li>
													<li id="person_10" data-code="10" data-peple="성인" data-count="0">
														<strong class="tit">시간</strong><span class="bx_num"><button
																class="btn_mins" id="Minus|10">감소</button>
															<div class="txt_num">09:00</div>
														</span></li>
													<li id="person_10" data-code="10" data-peple="성인" data-count="0">
														<strong class="tit">성인</strong><span class="bx_num"><button
																class="btn_mins" id="Minus|10">감소</button>
															<div class="txt_num">2명</div>
														</span></li>
													<li>
														<img src="img/bookButton.jpg" style="width:150px; height:45px">
													</li>
												</ul>
											</div>
										</div>
									</div>



									<div class="select_seat_wrap">
										<h5 class="hidden">좌석선택</h5>
										<div class="top_txt_info">
											<p id="ticketMessageInfo">좌석을 클릭하세요.</p>
										</div>
										<div id="PersonSeatSelect"> </div>

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
																style="position:relative; top:0; left:0;" dir="ltr">
																<div class="meat_door_pos" id="scrollWrap">
																	<div class="mseat_hidden">

																		<span class="title_screen1">SCREEN</span>

																		<div class="showMap">
																			<div class="floor_bx seatSet1"> <span
																					class="floor_tit"
																					style="display: none;">9F</span>
																				<div class="seat_area"
																					style="margin-top: 30px; width: 348.304px; height: 274.615px;">
																					<span class="seat_tit"
																						style="left:-30px; top:0px">A</span><a
																						href="javascript:void(0);"
																						alt="좌석 번호:A1 발받침석"
																						class="sel foot_seat Impossible p0 completed grNum3"
																						block-code="p0" data-seat="A1"
																						seat-statuscode="30"
																						seat-group="grNum3"
																						seat-code="1A01"
																						style="left: 21px; top: 0px;"><span
																							class="foot_seat Impossible f1 blind"
																							style="top: 0px;">1</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:A2 발받침석"
																						class="sel foot_seat p0 grNum4"
																						block-code="p0" data-seat="A2"
																						seat-statuscode="0"
																						seat-group="grNum4"
																						seat-code="1A02"
																						style="left: 46.5652px; top: 0px;"><span
																							class="foot_seat f1"
																							style="top: 0px;">2</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:A3 발받침석"
																						class="sel foot_seat p0 grNum5"
																						block-code="p0" data-seat="A3"
																						seat-statuscode="0"
																						seat-group="grNum5"
																						seat-code="1A03"
																						style="left: 85.1739px; top: 0px;"><span
																							class="foot_seat f1"
																							style="top: 0px;">3</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:A4 발받침석"
																						class="sel foot_seat Impossible p0 completed grNum6"
																						block-code="p0" data-seat="A4"
																						seat-statuscode="30"
																						seat-group="grNum6"
																						seat-code="1A04"
																						style="left: 110.739px; top: 0px;"><span
																							class="foot_seat Impossible f1 blind"
																							style="top: 0px;">4</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:A5 발받침석"
																						class="sel foot_seat p0 grNum7"
																						block-code="p0" data-seat="A5"
																						seat-statuscode="0"
																						seat-group="grNum7"
																						seat-code="1A05"
																						style="left: 136.304px; top: 0px;"><span
																							class="foot_seat f1"
																							style="top: 0px;">5</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:A6 발받침석"
																						class="sel foot_seat p0 grNum7"
																						block-code="p0" data-seat="A6"
																						seat-statuscode="0"
																						seat-group="grNum7"
																						seat-code="1A06"
																						style="left: 161.87px; top: 0px;"><span
																							class="foot_seat f1"
																							style="top: 0px;">6</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:A7 발받침석"
																						class="sel foot_seat p0 grNum7"
																						block-code="p0" data-seat="A7"
																						seat-statuscode="0"
																						seat-group="grNum7"
																						seat-code="1A07"
																						style="left: 187.435px; top: 0px;"><span
																							class="foot_seat f1"
																							style="top: 0px;">7</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:A8 발받침석"
																						class="sel foot_seat p0 grNum7"
																						block-code="p0" data-seat="A8"
																						seat-statuscode="0"
																						seat-group="grNum7"
																						seat-code="1A08"
																						style="left: 213px; top: 0px;"><span
																							class="foot_seat f1"
																							style="top: 0px;">8</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:A9 발받침석"
																						class="sel foot_seat p0 grNum7"
																						block-code="p0" data-seat="A9"
																						seat-statuscode="0"
																						seat-group="grNum7"
																						seat-code="1A09"
																						style="left: 238.565px; top: 0px;"><span
																							class="foot_seat f1"
																							style="top: 0px;">9</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:A10 발받침석"
																						class="sel foot_seat p0 grNum7"
																						block-code="p0" data-seat="A10"
																						seat-statuscode="0"
																						seat-group="grNum7"
																						seat-code="1A10"
																						style="left: 264.13px; top: 0px;"><span
																							class="foot_seat f1"
																							style="top: 0px;">10</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:A11 발받침석"
																						class="sel foot_seat p0 grNum8"
																						block-code="p0" data-seat="A11"
																						seat-statuscode="0"
																						seat-group="grNum8"
																						seat-code="1A11"
																						style="left: 302.739px; top: 0px;"><span
																							class="foot_seat f1"
																							style="top: 0px;">11</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:A12 발받침석"
																						class="sel foot_seat p0 grNum8"
																						block-code="p0" data-seat="A12"
																						seat-statuscode="0"
																						seat-group="grNum8"
																						seat-code="1A12"
																						style="left: 328.304px; top: 0px;"><span
																							class="foot_seat f1"
																							style="top: 0px;">12</span></a><span
																						class="seat_tit"
																						style="left:-30px; top:25.46153846153846px">B</span><a
																						href="javascript:void(0);"
																						alt="좌석 번호:B1 일반석"
																						class="sel  p0 grNum9"
																						block-code="p0" data-seat="B1"
																						seat-statuscode="0"
																						seat-group="grNum9"
																						seat-code="1B01"
																						style="left: 21px; top: 25.4615px;"><span
																							class=" f1"
																							style="top: 0px;">1</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:B2 일반석"
																						class="sel  p0 grNum9"
																						block-code="p0" data-seat="B2"
																						seat-statuscode="0"
																						seat-group="grNum9"
																						seat-code="1B02"
																						style="left: 46.5652px; top: 25.4615px;"><span
																							class=" f1"
																							style="top: 0px;">2</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:B3 일반석"
																						class="sel  p0 grNum10"
																						block-code="p0" data-seat="B3"
																						seat-statuscode="0"
																						seat-group="grNum10"
																						seat-code="1B03"
																						style="left: 85.1739px; top: 25.4615px;"><span
																							class=" f1"
																							style="top: 0px;">3</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:B4 일반석"
																						class="sel  p0 grNum10"
																						block-code="p0" data-seat="B4"
																						seat-statuscode="0"
																						seat-group="grNum10"
																						seat-code="1B04"
																						style="left: 110.739px; top: 25.4615px;"><span
																							class=" f1"
																							style="top: 0px;">4</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:B5 일반석"
																						class="sel  p0 grNum10"
																						block-code="p0" data-seat="B5"
																						seat-statuscode="0"
																						seat-group="grNum10"
																						seat-code="1B05"
																						style="left: 136.304px; top: 25.4615px;"><span
																							class=" f1"
																							style="top: 0px;">5</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:B6 일반석"
																						class="sel  p0 grNum10"
																						block-code="p0" data-seat="B6"
																						seat-statuscode="0"
																						seat-group="grNum10"
																						seat-code="1B06"
																						style="left: 161.87px; top: 25.4615px;"><span
																							class=" f1"
																							style="top: 0px;">6</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:B7 일반석"
																						class="sel  p0 grNum10"
																						block-code="p0" data-seat="B7"
																						seat-statuscode="0"
																						seat-group="grNum10"
																						seat-code="1B07"
																						style="left: 187.435px; top: 25.4615px;"><span
																							class=" f1"
																							style="top: 0px;">7</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:B8 일반석"
																						class="sel  Impossible p0 completed grNum11"
																						block-code="p0" data-seat="B8"
																						seat-statuscode="30"
																						seat-group="grNum11"
																						seat-code="1B08"
																						style="left: 213px; top: 25.4615px;"><span
																							class="Impossible f1 blind"
																							style="top: 0px;">8</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:B9 일반석"
																						class="sel  p0 grNum12"
																						block-code="p0" data-seat="B9"
																						seat-statuscode="0"
																						seat-group="grNum12"
																						seat-code="1B09"
																						style="left: 238.565px; top: 25.4615px;"><span
																							class=" f1"
																							style="top: 0px;">9</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:B10 일반석"
																						class="sel  p0 grNum12"
																						block-code="p0" data-seat="B10"
																						seat-statuscode="0"
																						seat-group="grNum12"
																						seat-code="1B10"
																						style="left: 264.13px; top: 25.4615px;"><span
																							class=" f1"
																							style="top: 0px;">10</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:B11 일반석"
																						class="sel  p0 grNum13"
																						block-code="p0" data-seat="B11"
																						seat-statuscode="0"
																						seat-group="grNum13"
																						seat-code="1B11"
																						style="left: 302.739px; top: 25.4615px;"><span
																							class=" f1"
																							style="top: 0px;">11</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:B12 일반석"
																						class="sel  p0 grNum13"
																						block-code="p0" data-seat="B12"
																						seat-statuscode="0"
																						seat-group="grNum13"
																						seat-code="1B12"
																						style="left: 328.304px; top: 25.4615px;"><span
																							class=" f1"
																							style="top: 0px;">12</span></a><span
																						class="seat_tit"
																						style="left:-30px; top:50.92307692307692px">C</span><a
																						href="javascript:void(0);"
																						alt="좌석 번호:C1 일반석"
																						class="sel  p0 grNum14"
																						block-code="p0" data-seat="C1"
																						seat-statuscode="0"
																						seat-group="grNum14"
																						seat-code="1C01"
																						style="left: 21px; top: 50.9231px;"><span
																							class=" f1"
																							style="top: 0px;">1</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:C2 일반석"
																						class="sel  p0 grNum14"
																						block-code="p0" data-seat="C2"
																						seat-statuscode="0"
																						seat-group="grNum14"
																						seat-code="1C02"
																						style="left: 46.5652px; top: 50.9231px;"><span
																							class=" f1"
																							style="top: 0px;">2</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:C3 일반석"
																						class="sel  p0 grNum15"
																						block-code="p0" data-seat="C3"
																						seat-statuscode="0"
																						seat-group="grNum15"
																						seat-code="1C03"
																						style="left: 85.1739px; top: 50.9231px;"><span
																							class=" f1"
																							style="top: 0px;">3</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:C4 일반석"
																						class="sel  p0 grNum15"
																						block-code="p0" data-seat="C4"
																						seat-statuscode="0"
																						seat-group="grNum15"
																						seat-code="1C04"
																						style="left: 110.739px; top: 50.9231px;"><span
																							class=" f1"
																							style="top: 0px;">4</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:C5 일반석"
																						class="sel  p0 grNum15"
																						block-code="p0" data-seat="C5"
																						seat-statuscode="0"
																						seat-group="grNum15"
																						seat-code="1C05"
																						style="left: 136.304px; top: 50.9231px;"><span
																							class=" f1"
																							style="top: 0px;">5</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:C6 일반석"
																						class="sel  p0 grNum15"
																						block-code="p0" data-seat="C6"
																						seat-statuscode="0"
																						seat-group="grNum15"
																						seat-code="1C06"
																						style="left: 161.87px; top: 50.9231px;"><span
																							class=" f1"
																							style="top: 0px;">6</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:C7 일반석"
																						class="sel  p0 grNum15"
																						block-code="p0" data-seat="C7"
																						seat-statuscode="0"
																						seat-group="grNum15"
																						seat-code="1C07"
																						style="left: 187.435px; top: 50.9231px;"><span
																							class=" f1"
																							style="top: 0px;">7</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:C8 일반석"
																						class="sel  p0 grNum15"
																						block-code="p0" data-seat="C8"
																						seat-statuscode="0"
																						seat-group="grNum15"
																						seat-code="1C08"
																						style="left: 213px; top: 50.9231px;"><span
																							class=" f1"
																							style="top: 0px;">8</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:C9 일반석"
																						class="sel  Impossible p0 completed grNum16"
																						block-code="p0" data-seat="C9"
																						seat-statuscode="30"
																						seat-group="grNum16"
																						seat-code="1C09"
																						style="left: 238.565px; top: 50.9231px;"><span
																							class="Impossible f1 blind"
																							style="top: 0px;">9</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:C10 일반석"
																						class="sel  p0 grNum17"
																						block-code="p0" data-seat="C10"
																						seat-statuscode="0"
																						seat-group="grNum17"
																						seat-code="1C10"
																						style="left: 264.13px; top: 50.9231px;"><span
																							class=" f1"
																							style="top: 0px;">10</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:C11 일반석"
																						class="sel  p0 grNum18"
																						block-code="p0" data-seat="C11"
																						seat-statuscode="0"
																						seat-group="grNum18"
																						seat-code="1C11"
																						style="left: 302.739px; top: 50.9231px;"><span
																							class=" f1"
																							style="top: 0px;">11</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:C12 일반석"
																						class="sel  p0 grNum18"
																						block-code="p0" data-seat="C12"
																						seat-statuscode="0"
																						seat-group="grNum18"
																						seat-code="1C12"
																						style="left: 328.304px; top: 50.9231px;"><span
																							class=" f1"
																							style="top: 0px;">12</span></a><span
																						class="seat_tit"
																						style="left:-30px; top:76.38461538461539px">D</span><a
																						href="javascript:void(0);"
																						alt="좌석 번호:D1 일반석"
																						class="sel  p0 grNum19"
																						block-code="p0" data-seat="D1"
																						seat-statuscode="0"
																						seat-group="grNum19"
																						seat-code="1D01"
																						style="left: 21px; top: 76.3846px;"><span
																							class=" f1"
																							style="top: 0px;">1</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:D2 일반석"
																						class="sel  p0 grNum19"
																						block-code="p0" data-seat="D2"
																						seat-statuscode="0"
																						seat-group="grNum19"
																						seat-code="1D02"
																						style="left: 46.5652px; top: 76.3846px;"><span
																							class=" f1"
																							style="top: 0px;">2</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:D3 일반석"
																						class="sel  p0 grNum20"
																						block-code="p0" data-seat="D3"
																						seat-statuscode="0"
																						seat-group="grNum20"
																						seat-code="1D03"
																						style="left: 85.1739px; top: 76.3846px;"><span
																							class=" f1"
																							style="top: 0px;">3</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:D4 일반석"
																						class="sel  p0 grNum20"
																						block-code="p0" data-seat="D4"
																						seat-statuscode="0"
																						seat-group="grNum20"
																						seat-code="1D04"
																						style="left: 110.739px; top: 76.3846px;"><span
																							class=" f1"
																							style="top: 0px;">4</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:D5 일반석"
																						class="sel  p0 completed grNum21"
																						block-code="p0" data-seat="D5"
																						seat-statuscode="50"
																						seat-group="grNum21"
																						seat-code="1D05"
																						style="left: 136.304px; top: 76.3846px;"><span
																							class="f1 blind"
																							style="top: 0px;">5</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:D6 일반석"
																						class="sel  p0 completed grNum21"
																						block-code="p0" data-seat="D6"
																						seat-statuscode="50"
																						seat-group="grNum21"
																						seat-code="1D06"
																						style="left: 161.87px; top: 76.3846px;"><span
																							class="f1 blind"
																							style="top: 0px;">6</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:D7 일반석"
																						class="sel  p0 grNum22"
																						block-code="p0" data-seat="D7"
																						seat-statuscode="0"
																						seat-group="grNum22"
																						seat-code="1D07"
																						style="left: 187.435px; top: 76.3846px;"><span
																							class=" f1"
																							style="top: 0px;">7</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:D8 일반석"
																						class="sel  p0 grNum22"
																						block-code="p0" data-seat="D8"
																						seat-statuscode="0"
																						seat-group="grNum22"
																						seat-code="1D08"
																						style="left: 213px; top: 76.3846px;"><span
																							class=" f1"
																							style="top: 0px;">8</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:D9 일반석"
																						class="sel  p0 grNum22"
																						block-code="p0" data-seat="D9"
																						seat-statuscode="0"
																						seat-group="grNum22"
																						seat-code="1D09"
																						style="left: 238.565px; top: 76.3846px;"><span
																							class=" f1"
																							style="top: 0px;">9</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:D10 일반석"
																						class="sel  p0 grNum22"
																						block-code="p0" data-seat="D10"
																						seat-statuscode="0"
																						seat-group="grNum22"
																						seat-code="1D10"
																						style="left: 264.13px; top: 76.3846px;"><span
																							class=" f1"
																							style="top: 0px;">10</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:D11 일반석"
																						class="sel  p0 grNum23"
																						block-code="p0" data-seat="D11"
																						seat-statuscode="0"
																						seat-group="grNum23"
																						seat-code="1D11"
																						style="left: 302.739px; top: 76.3846px;"><span
																							class=" f1"
																							style="top: 0px;">11</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:D12 일반석"
																						class="sel  p0 grNum23"
																						block-code="p0" data-seat="D12"
																						seat-statuscode="0"
																						seat-group="grNum23"
																						seat-code="1D12"
																						style="left: 328.304px; top: 76.3846px;"><span
																							class=" f1"
																							style="top: 0px;">12</span></a><span
																						class="seat_tit"
																						style="left:-30px; top:101.84615384615384px">E</span><a
																						href="javascript:void(0);"
																						alt="좌석 번호:E1 일반석"
																						class="sel  p0 grNum24"
																						block-code="p0" data-seat="E1"
																						seat-statuscode="0"
																						seat-group="grNum24"
																						seat-code="1E01"
																						style="left: 21px; top: 101.846px;"><span
																							class=" f1"
																							style="top: 0px;">1</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:E2 일반석"
																						class="sel  p0 grNum24"
																						block-code="p0" data-seat="E2"
																						seat-statuscode="0"
																						seat-group="grNum24"
																						seat-code="1E02"
																						style="left: 46.5652px; top: 101.846px;"><span
																							class=" f1"
																							style="top: 0px;">2</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:E3 일반석"
																						class="sel  p0 completed grNum25"
																						block-code="p0" data-seat="E3"
																						seat-statuscode="50"
																						seat-group="grNum25"
																						seat-code="1E03"
																						style="left: 85.1739px; top: 101.846px;"><span
																							class="f1 blind"
																							style="top: 0px;">3</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:E4 일반석"
																						class="sel  p0 completed grNum25"
																						block-code="p0" data-seat="E4"
																						seat-statuscode="50"
																						seat-group="grNum25"
																						seat-code="1E04"
																						style="left: 110.739px; top: 101.846px;"><span
																							class="f1 blind"
																							style="top: 0px;">4</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:E5 일반석"
																						class="sel  p0 completed grNum25"
																						block-code="p0" data-seat="E5"
																						seat-statuscode="50"
																						seat-group="grNum25"
																						seat-code="1E05"
																						style="left: 136.304px; top: 101.846px;"><span
																							class="f1 blind"
																							style="top: 0px;">5</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:E6 일반석"
																						class="sel  p0 completed grNum25"
																						block-code="p0" data-seat="E6"
																						seat-statuscode="50"
																						seat-group="grNum25"
																						seat-code="1E06"
																						style="left: 161.87px; top: 101.846px;"><span
																							class="f1 blind"
																							style="top: 0px;">6</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:E7 일반석"
																						class="sel  p0 completed grNum25"
																						block-code="p0" data-seat="E7"
																						seat-statuscode="50"
																						seat-group="grNum25"
																						seat-code="1E07"
																						style="left: 187.435px; top: 101.846px;"><span
																							class="f1 blind"
																							style="top: 0px;">7</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:E8 일반석"
																						class="sel  p0 completed grNum25"
																						block-code="p0" data-seat="E8"
																						seat-statuscode="50"
																						seat-group="grNum25"
																						seat-code="1E08"
																						style="left: 213px; top: 101.846px;"><span
																							class="f1 blind"
																							style="top: 0px;">8</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:E9 일반석"
																						class="sel  p0 completed grNum25"
																						block-code="p0" data-seat="E9"
																						seat-statuscode="50"
																						seat-group="grNum25"
																						seat-code="1E09"
																						style="left: 238.565px; top: 101.846px;"><span
																							class="f1 blind"
																							style="top: 0px;">9</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:E10 일반석"
																						class="sel  p0 completed grNum25"
																						block-code="p0" data-seat="E10"
																						seat-statuscode="50"
																						seat-group="grNum25"
																						seat-code="1E10"
																						style="left: 264.13px; top: 101.846px;"><span
																							class="f1 blind"
																							style="top: 0px;">10</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:E11 일반석"
																						class="sel  p0 completed grNum26"
																						block-code="p0" data-seat="E11"
																						seat-statuscode="50"
																						seat-group="grNum26"
																						seat-code="1E11"
																						style="left: 302.739px; top: 101.846px;"><span
																							class="f1 blind"
																							style="top: 0px;">11</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:E12 일반석"
																						class="sel  p0 completed grNum26"
																						block-code="p0" data-seat="E12"
																						seat-statuscode="50"
																						seat-group="grNum26"
																						seat-code="1E12"
																						style="left: 328.304px; top: 101.846px;"><span
																							class="f1 blind"
																							style="top: 0px;">12</span></a><span
																						class="seat_tit"
																						style="left:-30px; top:127.3076923076923px">F</span><a
																						href="javascript:void(0);"
																						alt="좌석 번호:F1 일반석"
																						class="sel  p0 completed grNum27"
																						block-code="p0" data-seat="F1"
																						seat-statuscode="50"
																						seat-group="grNum27"
																						seat-code="1F01"
																						style="left: 21px; top: 127.308px;"><span
																							class="f1 blind"
																							style="top: 0px;">1</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:F2 일반석"
																						class="sel  p0 completed grNum27"
																						block-code="p0" data-seat="F2"
																						seat-statuscode="50"
																						seat-group="grNum27"
																						seat-code="1F02"
																						style="left: 46.5652px; top: 127.308px;"><span
																							class="f1 blind"
																							style="top: 0px;">2</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:F3 일반석 SWEET SPOT"
																						class="sel  sweet_spot p0 completed grNum28"
																						block-code="p0" data-seat="F3"
																						seat-statuscode="50"
																						seat-group="grNum28"
																						seat-code="1F03"
																						style="left: 85.1739px; top: 127.308px;"><span
																							class="sweet_spot f1 blind"
																							style="top: 0px;">3</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:F4 일반석 SWEET SPOT"
																						class="sel  sweet_spot p0 completed grNum28"
																						block-code="p0" data-seat="F4"
																						seat-statuscode="50"
																						seat-group="grNum28"
																						seat-code="1F04"
																						style="left: 110.739px; top: 127.308px;"><span
																							class="sweet_spot f1 blind"
																							style="top: 0px;">4</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:F5 일반석 SWEET SPOT"
																						class="sel  sweet_spot p0 completed grNum28"
																						block-code="p0" data-seat="F5"
																						seat-statuscode="50"
																						seat-group="grNum28"
																						seat-code="1F05"
																						style="left: 136.304px; top: 127.308px;"><span
																							class="sweet_spot f1 blind"
																							style="top: 0px;">5</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:F6 일반석 SWEET SPOT"
																						class="sel  sweet_spot Impossible p0 completed grNum28"
																						block-code="p0" data-seat="F6"
																						seat-statuscode="30"
																						seat-group="grNum28"
																						seat-code="1F06"
																						style="left: 161.87px; top: 127.308px;"><span
																							class="sweet_spot Impossible f1 blind"
																							style="top: 0px;">6</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:F7 일반석 SWEET SPOT"
																						class="sel  sweet_spot p0 completed grNum28"
																						block-code="p0" data-seat="F7"
																						seat-statuscode="50"
																						seat-group="grNum28"
																						seat-code="1F07"
																						style="left: 187.435px; top: 127.308px;"><span
																							class="sweet_spot f1 blind"
																							style="top: 0px;">7</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:F8 일반석 SWEET SPOT"
																						class="sel  sweet_spot p0 completed grNum28"
																						block-code="p0" data-seat="F8"
																						seat-statuscode="50"
																						seat-group="grNum28"
																						seat-code="1F08"
																						style="left: 213px; top: 127.308px;"><span
																							class="sweet_spot f1 blind"
																							style="top: 0px;">8</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:F9 일반석 SWEET SPOT"
																						class="sel  sweet_spot p0 completed grNum28"
																						block-code="p0" data-seat="F9"
																						seat-statuscode="50"
																						seat-group="grNum28"
																						seat-code="1F09"
																						style="left: 238.565px; top: 127.308px;"><span
																							class="sweet_spot f1 blind"
																							style="top: 0px;">9</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:F10 일반석 SWEET SPOT"
																						class="sel  sweet_spot p0 completed grNum28"
																						block-code="p0" data-seat="F10"
																						seat-statuscode="50"
																						seat-group="grNum28"
																						seat-code="1F10"
																						style="left: 264.13px; top: 127.308px;"><span
																							class="sweet_spot f1 blind"
																							style="top: 0px;">10</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:F11 일반석"
																						class="sel  p0 completed grNum29"
																						block-code="p0" data-seat="F11"
																						seat-statuscode="50"
																						seat-group="grNum29"
																						seat-code="1F11"
																						style="left: 302.739px; top: 127.308px;"><span
																							class="f1 blind"
																							style="top: 0px;">11</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:F12 일반석"
																						class="sel  p0 completed grNum29"
																						block-code="p0" data-seat="F12"
																						seat-statuscode="50"
																						seat-group="grNum29"
																						seat-code="1F12"
																						style="left: 328.304px; top: 127.308px;"><span
																							class="f1 blind"
																							style="top: 0px;">12</span></a><span
																						class="seat_tit"
																						style="left:-30px; top:152.76923076923077px">G</span><a
																						href="javascript:void(0);"
																						alt="좌석 번호:G1 일반석"
																						class="sel  p0 completed grNum30"
																						block-code="p0" data-seat="G1"
																						seat-statuscode="50"
																						seat-group="grNum30"
																						seat-code="1G01"
																						style="left: 21px; top: 152.769px;"><span
																							class="f1 blind"
																							style="top: 0px;">1</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:G2 일반석"
																						class="sel  p0 completed grNum30"
																						block-code="p0" data-seat="G2"
																						seat-statuscode="50"
																						seat-group="grNum30"
																						seat-code="1G02"
																						style="left: 46.5652px; top: 152.769px;"><span
																							class="f1 blind"
																							style="top: 0px;">2</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:G3 일반석 SWEET SPOT"
																						class="sel  sweet_spot p0 completed grNum31"
																						block-code="p0" data-seat="G3"
																						seat-statuscode="50"
																						seat-group="grNum31"
																						seat-code="1G03"
																						style="left: 85.1739px; top: 152.769px;"><span
																							class="sweet_spot f1 blind"
																							style="top: 0px;">3</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:G4 일반석 SWEET SPOT"
																						class="sel  sweet_spot p0 completed grNum31"
																						block-code="p0" data-seat="G4"
																						seat-statuscode="50"
																						seat-group="grNum31"
																						seat-code="1G04"
																						style="left: 110.739px; top: 152.769px;"><span
																							class="sweet_spot f1 blind"
																							style="top: 0px;">4</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:G5 일반석 SWEET SPOT"
																						class="sel  sweet_spot p0 completed grNum31"
																						block-code="p0" data-seat="G5"
																						seat-statuscode="50"
																						seat-group="grNum31"
																						seat-code="1G05"
																						style="left: 136.304px; top: 152.769px;"><span
																							class="sweet_spot f1 blind"
																							style="top: 0px;">5</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:G6 일반석 SWEET SPOT"
																						class="sel  sweet_spot p0 completed grNum31"
																						block-code="p0" data-seat="G6"
																						seat-statuscode="50"
																						seat-group="grNum31"
																						seat-code="1G06"
																						style="left: 161.87px; top: 152.769px;"><span
																							class="sweet_spot f1 blind"
																							style="top: 0px;">6</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:G7 일반석 SWEET SPOT"
																						class="sel  sweet_spot p0 completed grNum31"
																						block-code="p0" data-seat="G7"
																						seat-statuscode="50"
																						seat-group="grNum31"
																						seat-code="1G07"
																						style="left: 187.435px; top: 152.769px;"><span
																							class="sweet_spot f1 blind"
																							style="top: 0px;">7</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:G8 일반석 SWEET SPOT"
																						class="sel  sweet_spot p0 completed grNum31"
																						block-code="p0" data-seat="G8"
																						seat-statuscode="50"
																						seat-group="grNum31"
																						seat-code="1G08"
																						style="left: 213px; top: 152.769px;"><span
																							class="sweet_spot f1 blind"
																							style="top: 0px;">8</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:G9 일반석 SWEET SPOT"
																						class="sel  sweet_spot p0 completed grNum31"
																						block-code="p0" data-seat="G9"
																						seat-statuscode="50"
																						seat-group="grNum31"
																						seat-code="1G09"
																						style="left: 238.565px; top: 152.769px;"><span
																							class="sweet_spot f1 blind"
																							style="top: 0px;">9</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:G10 일반석 SWEET SPOT"
																						class="sel  sweet_spot p0 completed grNum31"
																						block-code="p0" data-seat="G10"
																						seat-statuscode="50"
																						seat-group="grNum31"
																						seat-code="1G10"
																						style="left: 264.13px; top: 152.769px;"><span
																							class="sweet_spot f1 blind"
																							style="top: 0px;">10</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:G11 일반석"
																						class="sel  p0 completed grNum32"
																						block-code="p0" data-seat="G11"
																						seat-statuscode="50"
																						seat-group="grNum32"
																						seat-code="1G11"
																						style="left: 302.739px; top: 152.769px;"><span
																							class="f1 blind"
																							style="top: 0px;">11</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:G12 일반석"
																						class="sel  p0 completed grNum32"
																						block-code="p0" data-seat="G12"
																						seat-statuscode="50"
																						seat-group="grNum32"
																						seat-code="1G12"
																						style="left: 328.304px; top: 152.769px;"><span
																							class="f1 blind"
																							style="top: 0px;">12</span></a><span
																						class="seat_tit"
																						style="left:-30px; top:178.23076923076923px">H</span><a
																						href="javascript:void(0);"
																						alt="좌석 번호:H1 일반석"
																						class="sel  p0 completed grNum33"
																						block-code="p0" data-seat="H1"
																						seat-statuscode="50"
																						seat-group="grNum33"
																						seat-code="1H01"
																						style="left: 21px; top: 178.231px;"><span
																							class="f1 blind"
																							style="top: 0px;">1</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:H2 일반석"
																						class="sel  p0 completed grNum33"
																						block-code="p0" data-seat="H2"
																						seat-statuscode="50"
																						seat-group="grNum33"
																						seat-code="1H02"
																						style="left: 46.5652px; top: 178.231px;"><span
																							class="f1 blind"
																							style="top: 0px;">2</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:H3 일반석 SWEET SPOT"
																						class="sel  sweet_spot p0 completed grNum34"
																						block-code="p0" data-seat="H3"
																						seat-statuscode="50"
																						seat-group="grNum34"
																						seat-code="1H03"
																						style="left: 85.1739px; top: 178.231px;"><span
																							class="sweet_spot f1 blind"
																							style="top: 0px;">3</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:H4 일반석 SWEET SPOT"
																						class="sel  sweet_spot p0 completed grNum34"
																						block-code="p0" data-seat="H4"
																						seat-statuscode="50"
																						seat-group="grNum34"
																						seat-code="1H04"
																						style="left: 110.739px; top: 178.231px;"><span
																							class="sweet_spot f1 blind"
																							style="top: 0px;">4</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:H5 일반석 SWEET SPOT"
																						class="sel  sweet_spot p0 completed grNum34"
																						block-code="p0" data-seat="H5"
																						seat-statuscode="50"
																						seat-group="grNum34"
																						seat-code="1H05"
																						style="left: 136.304px; top: 178.231px;"><span
																							class="sweet_spot f1 blind"
																							style="top: 0px;">5</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:H6 일반석 SWEET SPOT"
																						class="sel  sweet_spot p0 completed grNum34"
																						block-code="p0" data-seat="H6"
																						seat-statuscode="50"
																						seat-group="grNum34"
																						seat-code="1H06"
																						style="left: 161.87px; top: 178.231px;"><span
																							class="sweet_spot f1 blind"
																							style="top: 0px;">6</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:H7 일반석 SWEET SPOT"
																						class="sel  sweet_spot p0 completed grNum34"
																						block-code="p0" data-seat="H7"
																						seat-statuscode="50"
																						seat-group="grNum34"
																						seat-code="1H07"
																						style="left: 187.435px; top: 178.231px;"><span
																							class="sweet_spot f1 blind"
																							style="top: 0px;">7</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:H8 일반석 SWEET SPOT"
																						class="sel  sweet_spot p0 completed grNum34"
																						block-code="p0" data-seat="H8"
																						seat-statuscode="50"
																						seat-group="grNum34"
																						seat-code="1H08"
																						style="left: 213px; top: 178.231px;"><span
																							class="sweet_spot f1 blind"
																							style="top: 0px;">8</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:H9 일반석 SWEET SPOT"
																						class="sel  sweet_spot p0 completed grNum34"
																						block-code="p0" data-seat="H9"
																						seat-statuscode="50"
																						seat-group="grNum34"
																						seat-code="1H09"
																						style="left: 238.565px; top: 178.231px;"><span
																							class="sweet_spot f1 blind"
																							style="top: 0px;">9</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:H10 일반석 SWEET SPOT"
																						class="sel  sweet_spot p0 completed grNum34"
																						block-code="p0" data-seat="H10"
																						seat-statuscode="50"
																						seat-group="grNum34"
																						seat-code="1H10"
																						style="left: 264.13px; top: 178.231px;"><span
																							class="sweet_spot f1 blind"
																							style="top: 0px;">10</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:H11 일반석"
																						class="sel  p0 completed grNum35"
																						block-code="p0" data-seat="H11"
																						seat-statuscode="50"
																						seat-group="grNum35"
																						seat-code="1H11"
																						style="left: 302.739px; top: 178.231px;"><span
																							class="f1 blind"
																							style="top: 0px;">11</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:H12 일반석"
																						class="sel  p0 completed grNum35"
																						block-code="p0" data-seat="H12"
																						seat-statuscode="50"
																						seat-group="grNum35"
																						seat-code="1H12"
																						style="left: 328.304px; top: 178.231px;"><span
																							class="f1 blind"
																							style="top: 0px;">12</span></a><span
																						class="seat_tit"
																						style="left:-30px; top:203.69230769230768px">I</span><a
																						href="javascript:void(0);"
																						alt="좌석 번호:I1 일반석"
																						class="sel  p0 grNum36"
																						block-code="p0" data-seat="I1"
																						seat-statuscode="0"
																						seat-group="grNum36"
																						seat-code="1I01"
																						style="left: 21px; top: 203.692px;"><span
																							class=" f1"
																							style="top: 0px;">1</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:I2 일반석"
																						class="sel  p0 completed grNum37"
																						block-code="p0" data-seat="I2"
																						seat-statuscode="50"
																						seat-group="grNum37"
																						seat-code="1I02"
																						style="left: 46.5652px; top: 203.692px;"><span
																							class="f1 blind"
																							style="top: 0px;">2</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:I3 일반석 SWEET SPOT"
																						class="sel  sweet_spot p0 completed grNum38"
																						block-code="p0" data-seat="I3"
																						seat-statuscode="50"
																						seat-group="grNum38"
																						seat-code="1I03"
																						style="left: 85.1739px; top: 203.692px;"><span
																							class="sweet_spot f1 blind"
																							style="top: 0px;">3</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:I4 일반석 SWEET SPOT"
																						class="sel  sweet_spot p0 completed grNum38"
																						block-code="p0" data-seat="I4"
																						seat-statuscode="50"
																						seat-group="grNum38"
																						seat-code="1I04"
																						style="left: 110.739px; top: 203.692px;"><span
																							class="sweet_spot f1 blind"
																							style="top: 0px;">4</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:I5 일반석 SWEET SPOT"
																						class="sel  sweet_spot p0 completed grNum38"
																						block-code="p0" data-seat="I5"
																						seat-statuscode="50"
																						seat-group="grNum38"
																						seat-code="1I05"
																						style="left: 136.304px; top: 203.692px;"><span
																							class="sweet_spot f1 blind"
																							style="top: 0px;">5</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:I6 일반석 SWEET SPOT"
																						class="sel  sweet_spot p0 completed grNum38"
																						block-code="p0" data-seat="I6"
																						seat-statuscode="50"
																						seat-group="grNum38"
																						seat-code="1I06"
																						style="left: 161.87px; top: 203.692px;"><span
																							class="sweet_spot f1 blind"
																							style="top: 0px;">6</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:I7 일반석 SWEET SPOT"
																						class="sel  sweet_spot p0 completed grNum38"
																						block-code="p0" data-seat="I7"
																						seat-statuscode="50"
																						seat-group="grNum38"
																						seat-code="1I07"
																						style="left: 187.435px; top: 203.692px;"><span
																							class="sweet_spot f1 blind"
																							style="top: 0px;">7</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:I8 일반석 SWEET SPOT"
																						class="sel  sweet_spot p0 completed grNum38"
																						block-code="p0" data-seat="I8"
																						seat-statuscode="50"
																						seat-group="grNum38"
																						seat-code="1I08"
																						style="left: 213px; top: 203.692px;"><span
																							class="sweet_spot f1 blind"
																							style="top: 0px;">8</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:I9 일반석 SWEET SPOT"
																						class="sel  sweet_spot p0 completed grNum38"
																						block-code="p0" data-seat="I9"
																						seat-statuscode="50"
																						seat-group="grNum38"
																						seat-code="1I09"
																						style="left: 238.565px; top: 203.692px;"><span
																							class="sweet_spot f1 blind"
																							style="top: 0px;">9</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:I10 일반석 SWEET SPOT"
																						class="sel  sweet_spot p0 completed grNum38"
																						block-code="p0" data-seat="I10"
																						seat-statuscode="50"
																						seat-group="grNum38"
																						seat-code="1I10"
																						style="left: 264.13px; top: 203.692px;"><span
																							class="sweet_spot f1 blind"
																							style="top: 0px;">10</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:I11 일반석"
																						class="sel  p0 completed grNum39"
																						block-code="p0" data-seat="I11"
																						seat-statuscode="50"
																						seat-group="grNum39"
																						seat-code="1I11"
																						style="left: 302.739px; top: 203.692px;"><span
																							class="f1 blind"
																							style="top: 0px;">11</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:I12 일반석"
																						class="sel  p0 completed grNum39"
																						block-code="p0" data-seat="I12"
																						seat-statuscode="50"
																						seat-group="grNum39"
																						seat-code="1I12"
																						style="left: 328.304px; top: 203.692px;"><span
																							class="f1 blind"
																							style="top: 0px;">12</span></a><span
																						class="seat_tit"
																						style="left:-30px; top:229.15384615384616px">J</span><a
																						href="javascript:void(0);"
																						alt="좌석 번호:J1 일반석"
																						class="sel  p0 completed grNum40"
																						block-code="p0" data-seat="J1"
																						seat-statuscode="50"
																						seat-group="grNum40"
																						seat-code="1J01"
																						style="left: 21px; top: 229.154px;"><span
																							class="f1 blind"
																							style="top: 0px;">1</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:J2 일반석"
																						class="sel  p0 completed grNum40"
																						block-code="p0" data-seat="J2"
																						seat-statuscode="50"
																						seat-group="grNum40"
																						seat-code="1J02"
																						style="left: 46.5652px; top: 229.154px;"><span
																							class="f1 blind"
																							style="top: 0px;">2</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:J3 일반석"
																						class="sel  p0 completed grNum41"
																						block-code="p0" data-seat="J3"
																						seat-statuscode="50"
																						seat-group="grNum41"
																						seat-code="1J03"
																						style="left: 85.1739px; top: 229.154px;"><span
																							class="f1 blind"
																							style="top: 0px;">3</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:J4 일반석"
																						class="sel  p0 completed grNum41"
																						block-code="p0" data-seat="J4"
																						seat-statuscode="50"
																						seat-group="grNum41"
																						seat-code="1J04"
																						style="left: 110.739px; top: 229.154px;"><span
																							class="f1 blind"
																							style="top: 0px;">4</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:J5 일반석"
																						class="sel  p0 completed grNum41"
																						block-code="p0" data-seat="J5"
																						seat-statuscode="50"
																						seat-group="grNum41"
																						seat-code="1J05"
																						style="left: 136.304px; top: 229.154px;"><span
																							class="f1 blind"
																							style="top: 0px;">5</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:J6 일반석"
																						class="sel  p0 completed grNum41"
																						block-code="p0" data-seat="J6"
																						seat-statuscode="50"
																						seat-group="grNum41"
																						seat-code="1J06"
																						style="left: 161.87px; top: 229.154px;"><span
																							class="f1 blind"
																							style="top: 0px;">6</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:J7 일반석"
																						class="sel  p0 completed grNum41"
																						block-code="p0" data-seat="J7"
																						seat-statuscode="50"
																						seat-group="grNum41"
																						seat-code="1J07"
																						style="left: 187.435px; top: 229.154px;"><span
																							class="f1 blind"
																							style="top: 0px;">7</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:J8 일반석"
																						class="sel  p0 completed grNum41"
																						block-code="p0" data-seat="J8"
																						seat-statuscode="50"
																						seat-group="grNum41"
																						seat-code="1J08"
																						style="left: 213px; top: 229.154px;"><span
																							class="f1 blind"
																							style="top: 0px;">8</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:J9 일반석"
																						class="sel  p0 completed grNum41"
																						block-code="p0" data-seat="J9"
																						seat-statuscode="50"
																						seat-group="grNum41"
																						seat-code="1J09"
																						style="left: 238.565px; top: 229.154px;"><span
																							class="f1 blind"
																							style="top: 0px;">9</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:J10 일반석"
																						class="sel  p0 completed grNum41"
																						block-code="p0" data-seat="J10"
																						seat-statuscode="50"
																						seat-group="grNum41"
																						seat-code="1J10"
																						style="left: 264.13px; top: 229.154px;"><span
																							class="f1 blind"
																							style="top: 0px;">10</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:J11 일반석"
																						class="sel  p0 grNum43"
																						block-code="p0" data-seat="J11"
																						seat-statuscode="0"
																						seat-group="grNum43"
																						seat-code="1J11"
																						style="left: 302.739px; top: 229.154px;"><span
																							class=" f1"
																							style="top: 0px;">11</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:J12 일반석"
																						class="sel  p0 grNum43"
																						block-code="p0" data-seat="J12"
																						seat-statuscode="0"
																						seat-group="grNum43"
																						seat-code="1J12"
																						style="left: 328.304px; top: 229.154px;"><span
																							class=" f1"
																							style="top: 0px;">12</span></a><span
																						class="seat_tit"
																						style="left:-30px; top:254.6153846153846px">K</span><a
																						href="javascript:void(0);"
																						alt="좌석 번호:K1 일반석"
																						class="sel  p0 completed grNum44"
																						block-code="p0" data-seat="K1"
																						seat-statuscode="50"
																						seat-group="grNum44"
																						seat-code="1K01"
																						style="left: 21px; top: 254.615px;"><span
																							class="f1 blind"
																							style="top: 0px;">1</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:K2 일반석"
																						class="sel  p0 completed grNum44"
																						block-code="p0" data-seat="K2"
																						seat-statuscode="50"
																						seat-group="grNum44"
																						seat-code="1K02"
																						style="left: 46.5652px; top: 254.615px;"><span
																							class="f1 blind"
																							style="top: 0px;">2</span></a><a
																						href="#none" alt="좌석 번호:K3 장애인석"
																						class="sel handicapped p0 grNum46 no_select"
																						block-code="p0" data-seat="K3"
																						seat-statuscode="0"
																						seat-group="grNum46"
																						seat-code="1K03"
																						style="left: 85.1739px; top: 254.615px;"><span
																							class="handicapped f1 no_select blind"
																							href="#none"
																							style="top: 0px;">3</span></a><a
																						href="#none" alt="좌석 번호:K4 장애인석"
																						class="sel handicapped p0 grNum46 no_select"
																						block-code="p0" data-seat="K4"
																						seat-statuscode="0"
																						seat-group="grNum46"
																						seat-code="1K04"
																						style="left: 110.739px; top: 254.615px;"><span
																							class="handicapped f1 no_select blind"
																							href="#none"
																							style="top: 0px;">4</span></a><a
																						href="#none" alt="좌석 번호:K5 장애인석"
																						class="sel handicapped p0 grNum46 no_select"
																						block-code="p0" data-seat="K5"
																						seat-statuscode="0"
																						seat-group="grNum46"
																						seat-code="1K05"
																						style="left: 136.304px; top: 254.615px;"><span
																							class="handicapped f1 no_select blind"
																							href="#none"
																							style="top: 0px;">5</span></a><a
																						href="#none" alt="좌석 번호:K6 장애인석"
																						class="sel handicapped p0 grNum46 no_select"
																						block-code="p0" data-seat="K6"
																						seat-statuscode="0"
																						seat-group="grNum46"
																						seat-code="1K06"
																						style="left: 161.87px; top: 254.615px;"><span
																							class="handicapped f1 no_select blind"
																							href="#none"
																							style="top: 0px;">6</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:K7 일반석"
																						class="sel  p0 completed grNum47"
																						block-code="p0" data-seat="K7"
																						seat-statuscode="50"
																						seat-group="grNum47"
																						seat-code="1K07"
																						style="left: 187.435px; top: 254.615px;"><span
																							class="f1 blind"
																							style="top: 0px;">7</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:K8 일반석"
																						class="sel  p0 completed grNum47"
																						block-code="p0" data-seat="K8"
																						seat-statuscode="50"
																						seat-group="grNum47"
																						seat-code="1K08"
																						style="left: 213px; top: 254.615px;"><span
																							class="f1 blind"
																							style="top: 0px;">8</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:K9 일반석"
																						class="sel  p0 completed grNum47"
																						block-code="p0" data-seat="K9"
																						seat-statuscode="50"
																						seat-group="grNum47"
																						seat-code="1K09"
																						style="left: 238.565px; top: 254.615px;"><span
																							class="f1 blind"
																							style="top: 0px;">9</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:K10 일반석"
																						class="sel  p0 completed grNum47"
																						block-code="p0" data-seat="K10"
																						seat-statuscode="50"
																						seat-group="grNum47"
																						seat-code="1K10"
																						style="left: 264.13px; top: 254.615px;"><span
																							class="f1 blind"
																							style="top: 0px;">10</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:K11 일반석"
																						class="sel  p0 grNum49"
																						block-code="p0" data-seat="K11"
																						seat-statuscode="0"
																						seat-group="grNum49"
																						seat-code="1K11"
																						style="left: 302.739px; top: 254.615px;"><span
																							class=" f1"
																							style="top: 0px;">11</span></a><a
																						href="javascript:void(0);"
																						alt="좌석 번호:K12 일반석"
																						class="sel  p0 grNum49"
																						block-code="p0" data-seat="K12"
																						seat-statuscode="0"
																						seat-group="grNum49"
																						seat-code="1K12"
																						style="left: 328.304px; top: 254.615px;"><span
																							class=" f1"
																							style="top: 0px;">12</span></a>
																				</div><span data-y="284px"
																					data-x="305px" class="w_bottom"
																					style="top: 280px; left: 716px;">상영관
																					출입문 입니다.</span>
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
																	<div class="mCSB_dragger_bar"
																		style="line-height: 50px;"></div>
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

        
        $('#layer').css({ 'width': maskWidth, 'height': maskHeight });
        $("#layer").css("position", "absolute");
        $("#layer").css("top", Math.max(0, (($(window).height() - $("#layer").outerHeight()) / 2) + $(window).scrollTop() - 100) + "px");
        $("#layer").css("left", Math.max(0, (($(window).width() - $("#layer").outerWidth()) / 2) + $(window).scrollLeft()) + "px");
    </script>
	
</body>
</html>