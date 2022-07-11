<%@page import="dto.UserDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
UserDto loginUser = (UserDto)session.getAttribute("login");
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
<link rel="stylesheet" href="css/member.css">

<script src="<%=request.getContextPath() %>/js/jQuery.js"></script>
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
</head>
<body>

	<header id="header"></header>
	<script src="<%=request.getContextPath() %>/js/header.js"></script>

	<div class="wrap" id="wrap">
		<div class="member6" style="position: absolute; margin-left: 5%">
			<section>
				<nav class="menu">
					<a href="#"><i class="fas fa-bars"></i></a> <a href="#"><i
						class="far fa-sticky-note"></i></a>
				</nav>

				<article class="profile">
					<img src="img/member6.jpg" alt="프로필 이미지">

					<h1 style="position: inherit;">양 준 혁</h1>
					<h2>LOTTE DEVELOPER</h2>

					<a id="id_btn_member6" href="#" class="btnView">VIEW MORE</a>
				</article>

				<ul class="contact">
					<li><i class="fab fa-facebook-f"></i> <span>Visit My
							Facebook page.</span></li>
					<li><i class="fas fa-envelope "></i> <span>leyjh220602@gmail.com</span>
					</li>
				</ul>

				<nav class="others">
					<a href="#" class="on"></a> <a href="#"></a> <a href="#"></a> <a
						href="#"></a>
				</nav>
			</section>
		</div>
		<div class="member6" style="position: absolute; margin-left: 35%">
			<section>
				<nav class="menu">
					<a href="#"><i class="fas fa-bars"></i></a> <a href="#"><i
						class="far fa-sticky-note"></i></a>
				</nav>

				<article class="profile">
					<img src="img/member11.jpg" alt="프로필 이미지">

					<h1 style="position: inherit;">김 진 광</h1>
					<h2>LOTTE DEVELOPER</h2>

					<a id="id_btn_member11" href="#" class="btnView">VIEW MORE</a>
				</article>

				<ul class="contact">
					<li><i class="fab fa-facebook-f"></i> <span>Visit My
							Facebook page.</span></li>
					<li><i class="fas fa-envelope "></i> <span>leyjh220602@gmail.com</span>
					</li>
				</ul>

				<nav class="others">
					<a href="#" class="on"></a> <a href="#"></a> <a href="#"></a> <a
						href="#"></a>
				</nav>
			</section>
		</div>
				<div class="member6" style="position: absolute; margin-left: 65%">
			<section>
				<nav class="menu">
					<a href="#"><i class="fas fa-bars"></i></a> <a href="#"><i
						class="far fa-sticky-note"></i></a>
				</nav>

				<article class="profile">
					<img src="img/member8.jpg" alt="프로필 이미지">

					<h1 style="position: inherit;">박 세 훈</h1>
					<h2>LOTTE DEVELOPER</h2>

					<a id="id_btn_member6" href="#" class="btnView">VIEW MORE</a>
				</article>

				<ul class="contact">
					<li><i class="fab fa-facebook-f"></i> <span>Visit My
							Facebook page.</span></li>
					<li><i class="fas fa-envelope "></i> <span>leyjh220602@gmail.com</span>
					</li>
				</ul>

				<nav class="others">
					<a href="#" class="on"></a> <a href="#"></a> <a href="#"></a> <a
						href="#"></a>
				</nav>
			</section>
		</div>
				<div class="member6" style="position: absolute; margin-left: 95%">
			<section>
				<nav class="menu">
					<a href="#"><i class="fas fa-bars"></i></a> <a href="#"><i
						class="far fa-sticky-note"></i></a>
				</nav>

				<article class="profile">
					<img src="img/member9.jpg" alt="프로필 이미지">

					<h1 style="position: inherit;">이 석 원</h1>
					<h2>LOTTE DEVELOPER</h2>

					<a id="id_btn_member9" href="#" class="btnView">VIEW MORE</a>
				</article>

				<ul class="contact">
					<li><i class="fab fa-facebook-f"></i> <span>Visit My
							Facebook page.</span></li>
					<li><i class="fas fa-envelope "></i> <span>leyjh220602@gmail.com</span>
					</li>
				</ul>

				<nav class="others">
					<a href="#" class="on"></a> <a href="#"></a> <a href="#"></a> <a
						href="#"></a>
				</nav>
			</section>
		</div>
				<div class="member6" style="position: absolute; margin-left: 125%">
			<section>
				<nav class="menu">
					<a href="#"><i class="fas fa-bars"></i></a> <a href="#"><i
						class="far fa-sticky-note"></i></a>
				</nav>

				<article class="profile">
					<img src="img/member10.jpg" alt="프로필 이미지">

					<h1 style="position: inherit;">김 진 우</h1>
					<h2>LOTTE DEVELOPER</h2>

					<a id="id_btn_member10" href="#" class="btnView">VIEW MORE</a>
				</article>

				<ul class="contact">
					<li><i class="fab fa-facebook-f"></i> <span>Visit My
							Facebook page.</span></li>
					<li><i class="fas fa-envelope "></i> <span>leyjh220602@gmail.com</span>
					</li>
				</ul>

				<nav class="others">
					<a href="#" class="on"></a> <a href="#"></a> <a href="#"></a> <a
						href="#"></a>
				</nav>
			</section>
		</div>
				<div class="member6" style="position: absolute; margin-left: 155%">
			<section>
				<nav class="menu">
					<a href="#"><i class="fas fa-bars"></i></a> <a href="#"><i
						class="far fa-sticky-note"></i></a>
				</nav>

				<article class="profile">
					<img src="img/member11.jpg" alt="프로필 이미지">

					<h1 style="position: inherit;">오 명 주</h1>
					<h2>LOTTE DEVELOPER</h2>

					<a id="id_btn_member11" href="#" class="btnView">VIEW MORE</a>
				</article>

				<ul class="contact">
					<li><i class="fab fa-facebook-f"></i> <span>Visit My
							Facebook page.</span></li>
					<li><i class="fas fa-envelope "></i> <span>leyjh220602@gmail.com</span>
					</li>
				</ul>

				<nav class="others">
					<a href="#" class="on"></a> <a href="#"></a> <a href="#"></a> <a
						href="#"></a>
				</nav>
			</section>
		</div>
	</div>


	<footer id="footer"></footer>
	<script src="./js/footer.js"></script>
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