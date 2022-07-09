<%@page import="dao.UserDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>비트 시네마</title>
<link rel="icon" href="img/favicon-228.png" type="image/x-icon">
<link rel="stylesheet"
	href="https://unpkg.com/swiper/swiper-bundle.min.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/headerFooter.css">

<script src="./js/jQuery.js"></script>
<!-- <script src="https://kit.fontawesome.com/c47106c6a7.js" crossorigin="anonymous"></script> -->
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
</head>
<body>
	<%-- <h2>HI~</h2>
	<button>예매하기</button>
	<button
		onclick="location.href='<%=request.getContextPath()%>/reservation?param=mypage'">마이페이지</button>
	<button
		onclick="location.href='<%=request.getContextPath()%>/user?param=login'">로그인</button>
		
		 --%>
	<script type="text/javascript">
		function ViewSearch() {
			document.getElementById("SearchLayer").style.display = 'inline'
		}
		function CloseSearch() {
			document.getElementById("SearchLayer").style.display = 'none'
		}
	</script>

	<header id="header"></header>
	<script src="./js/header.js"></script>

	<div class="wrap" id="wrap"></div>
	<script src="./js/index.js"></script>

	<footer id="footer"></footer>
	<script src="./js/footer.js"></script>
</body>
</html>