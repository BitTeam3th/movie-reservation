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
	<link rel="stylesheet" href="css/member.css">

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
        </div>
        </div>
    </div>
	

	<footer id="footer"></footer>
	<script src="./js/footer.js"></script>

    <script>
        //화면의 높이와 너비를 구한다.
        var maskHeight = $(document).height();
        var maskWidth = $(window).width();

        // //마스크의 높이와 너비를 화면 것으로 만들어 전체 화면을 채운다.
        $('#layer').css({ 'width': maskWidth, 'height': maskHeight });
        $("#layer").css("position", "absolute");
        $("#layer").css("top", Math.max(0, (($(window).height() - $("#layer").outerHeight()) / 2) + $(window).scrollTop() - 100) + "px");
        $("#layer").css("left", Math.max(0, (($(window).width() - $("#layer").outerWidth()) / 2) + $(window).scrollLeft()) + "px");
    </script>
	
</body>
</html>