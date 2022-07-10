<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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

    <div class="wrap" id="wrap">
        <div class="ticket_list" style="margin-top: 10%; margin-left: 10%; width:1400px">
            <ul class="ticket_info new2020">
                <li class="new_day open cancel_check" id="key0">
                    <div class="date">2022.07.09<span class="week">(토)</span></div><button type="button" title="닫기"
                        id="title0" aria-expanded="false"><strong class="tit">미니언즈 2(2D자막)</strong><span
                            class="sum"><em>15,000</em>원</span><span class="num">예매번호 <em>17051080</em></span><span
                            class="txt_col7 ty2">취소가능</span></button>
                    <div class="ticket">
                        <div class="info_area">
                            <div class="img"><img
                                    src="http://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202007/15599_102_1.jpg"
                                    alt=""></div>
                            <div class="info">
                                <dl>
                                    <dt>상영일시</dt>
                                    <dd><em>2022.07.24</em>(일)<em class="inter">22:00 ~ 23:37</em></dd>
                                </dl>
                                <dl>
                                    <dt>상영관</dt>
                                    <dd>가산디지털 6관<a href="#none" class="btn_col4 ty2 rnd" title="상세페이지 이동">상영관보기</a></dd>
                                </dl>
                                <dl>
                                    <dt>관람인원</dt>
                                    <dd>성인1</dd>
                                </dl>
                                <dl>
                                    <dt>좌석</dt>
                                    <dd><em>I5</em></dd>
                                </dl>
                                <div class="btn_wrap"><a href="#none" class="btn_col3 ty5">결제취소</a><a href="#none"
                                        class="btn_col2 ty5">신용카드전표출력</a><a href="#none" class="btn_col1 ty5">모바일 바로티켓
                                        받기</a></div>
                            </div>
                        </div>
                        <div class="payment_area">
                            <dl class="date_pay">
                                <dt>결제일시</dt>
                                <dd><em>2022-07-09 오후 4:31:42</em></dd>
                            </dl>
                            <div class="total_pay">
                                <div class="pay_area">
                                    <dl class="pay">
                                        <dt>주문금액</dt>
                                        <dd><em>15,000</em>원</dd>
                                    </dl>
                                </div>
                                <div class="pay_area dotline bgnone">
                                    <dl class="minus">
                                        <dt>할인금액</dt>
                                        <dd><em>0</em>원</dd>
                                    </dl>
                                    <div class="discont"></div>
                                </div>
                                <div class="pay_area">
                                    <dl class="pay">
                                        <dt>총 결제 금액</dt>
                                        <dd class="txt_color"><em>15,000</em>원</dd>
                                    </dl>
                                    <div class="number"><span class="txt_card1 ty1">신용카드</span>현대(다이너스) 403302******4800
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
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
            'width': maskWidth,
            'height': maskHeight
        });
        $("#layer").css("position", "absolute");
        $("#layer").css("top", Math.max(0, (($(window).height() - $("#layer").outerHeight()) / 2) + $(window)
            .scrollTop() -
            100) + "px");
        $("#layer").css("left", Math.max(0, (($(window).width() - $("#layer").outerWidth()) / 2) + $(window)
            .scrollLeft()) +
            "px");
    </script>

</body>

</html>