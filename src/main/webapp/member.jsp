<%@page import="dto.UserDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
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
<link rel="stylesheet" href="css/member.css">

<script src="<%=request.getContextPath()%>/js/jQuery.js"></script>
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/gsap/2.0.2/TweenMax.min.js"></script>

</head>
<body>

	<header id="header"></header>
	<script src="<%=request.getContextPath()%>/js/header.js"></script>

	<div class="wrap" id="wrap">
		<div id="contentContainer" class="trans3d member6">
			<section id="carouselContainer" class="trans3d">
				<figure id="item1" class="carouselItem trans3d">
					<div class="carouselItemInner trans3d">
						<nav class="menu">
							<a href="#"><i class="fas fa-bars"></i></a> <a href="#"><i
								class="far fa-sticky-note"></i></a>
						</nav>

						<article class="profile">
							<img src="img/member6.jpg" alt="프로필 이미지">

							<h1 style="position: inherit;">양 준 혁</h1>
							<h2>LOTTE DEVELOPER</h2>

							<a id="id_btn_member6" href="https://github.com/YJay94" class="btnView">VIEW MORE</a>
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
					</div>
				</figure>
				<figure id="item1" class="carouselItem trans3d">
					<div class="carouselItemInner trans3d">
						<nav class="menu">
					<a href="#"><i class="fas fa-bars"></i></a> <a href="#"><i
						class="far fa-sticky-note"></i></a>
				</nav>

				<article class="profile">
					<img src="img/member11.jpg" alt="프로필 이미지">

					<h1 style="position: inherit;">김 진 광</h1>
					<h2>LOTTE DEVELOPER</h2>

					<a id="id_btn_member11" href="https://github.com/Nicolao911" class="btnView">VIEW MORE</a>
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
					</div>
				</figure>
				<figure id="item1" class="carouselItem trans3d">
					<div class="carouselItemInner trans3d">
						<nav class="menu">
					<a href="#"><i class="fas fa-bars"></i></a> <a href="#"><i
						class="far fa-sticky-note"></i></a>
				</nav>

				<article class="profile">
					<img src="img/member8.jpg" alt="프로필 이미지">

					<h1 style="position: inherit;">박 세 훈</h1>
					<h2>LOTTE DEVELOPER</h2>

					<a id="id_btn_member6" href="https://github.com/SBHbro" class="btnView">VIEW MORE</a>
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
					</div>
				</figure>
				<figure id="item1" class="carouselItem trans3d">
					<div class="carouselItemInner trans3d">
						<nav class="menu">
					<a href="#"><i class="fas fa-bars"></i></a> <a href="#"><i
						class="far fa-sticky-note"></i></a>
				</nav>

				<article class="profile">
					<img src="img/member10.jpg" alt="프로필 이미지">

					<h1 style="position: inherit;">이 석 원</h1>
					<h2>LOTTE DEVELOPER</h2>

					<a id="id_btn_member9" href="https://github.com/clalsw" class="btnView">VIEW MORE</a>
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
					</div>
				</figure>
				<figure id="item1" class="carouselItem trans3d">
					<div class="carouselItemInner trans3d">
						<nav class="menu">
					<a href="#"><i class="fas fa-bars"></i></a> <a href="#"><i
						class="far fa-sticky-note"></i></a>
				</nav>

				<article class="profile">
					<img src="img/member7.jpg" alt="프로필 이미지">

					<h1 style="position: inherit;">김 진 우</h1>
					<h2>LOTTE DEVELOPER</h2>

					<a id="id_btn_member10" href="https://github.com/jinwooooooo" class="btnView">VIEW MORE</a>
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
					</div>
				</figure>
				<figure id="item1" class="carouselItem trans3d">
					<div class="carouselItemInner trans3d">
						<nav class="menu">
					<a href="#"><i class="fas fa-bars"></i></a> <a href="#"><i
						class="far fa-sticky-note"></i></a>
				</nav>

				<article class="profile">
					<img src="img/member9.jpg" alt="프로필 이미지">

					<h1 style="position: inherit;">오 명 주</h1>
					<h2>LOTTE DEVELOPER</h2>

					<a id="id_btn_member11" href="https://github.com/omj9803" class="btnView">VIEW MORE</a>
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
				</article>

				
					</div>
				</figure>
			</section>
		</div>
	</div>


	<footer id="footer"></footer>
	<script src="./js/footer.js"></script>
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
			$('#userName').children().text('<%=loginUser.getUsername()%> 님');
			$('#mainLogout').show();
			$('#mainMypage').show();
			$('#mainLogin').hide();
			$('#mainRegi').hide();
    </script>
	<%
	}
	%>


	<script type="text/javascript">
//set and cache variables
var w, container, carousel, item, radius, itemLength, rY, ticker, fps; 
var mouseX = 0;
var mouseY = 0;
var mouseZ = 0;
var addX = 0;


// fps counter created by: https://gist.github.com/sharkbrainguy/1156092,
// no need to create my own :)
var fps_counter = {
	
	tick: function () 
	{
		// this has to clone the array every tick so that
		// separate instances won't share state 
		this.times = this.times.concat(+new Date());
		var seconds, times = this.times;

		if (times.length > this.span + 1) 
		{
			times.shift(); // ditch the oldest time
			seconds = (times[times.length - 1] - times[0]) / 1000;
			return Math.round(this.span / seconds);
		} 
		else return null;
	},

	times: [],
	span: 20
};
var counter = Object.create(fps_counter);



$(document).ready( init )

function init()
{
	w = $(window);
	container = $( '#contentContainer' );
	carousel = $( '#carouselContainer' );
	item = $( '.carouselItem' );
	itemLength = $( '.carouselItem' ).length;
	fps = $('#fps');
	rY = 360 / itemLength;
	radius = Math.round( (400) / Math.tan( Math.PI / itemLength ) );
	
	// set container 3d props
	TweenMax.set(container, {perspective:600})
	TweenMax.set(carousel, {z:-(radius)})
	
	// create carousel item props
	
	for ( var i = 0; i < itemLength; i++ )
	{
		var $item = item.eq(i);
		var $block = $item.find('.carouselItemInner');
		
//thanks @chrisgannon!        
TweenMax.set($item, {rotationY:rY * i, z:radius, transformOrigin:"50% 50% " + -radius + "px"});
		
		animateIn( $item, $block )						
	}
	
	// set mouse x and y props and looper ticker
	window.addEventListener( "mousemove", onMouseMove, false );
	ticker = setInterval( looper, 3000/60 );			
}

function animateIn( $item, $block )
{
	var $nrX = 360 * getRandomInt(2);
	var $nrY = 360 * getRandomInt(2);
		
	var $nx = -(2000) + getRandomInt( 4000 )
	var $ny = -(2000) + getRandomInt( 4000 )
	var $nz = -4000 +  getRandomInt( 4000 )
		
	var $s = 1.5 + (getRandomInt( 10 ) * .1)
	var $d = 1 - (getRandomInt( 8 ) * .1)
	
	TweenMax.set( $item, { autoAlpha:1, delay:$d } )	
	TweenMax.set( $block, { z:$nz, rotationY:$nrY, rotationX:$nrX, x:$nx, y:$ny, autoAlpha:0} )
	TweenMax.to( $block, $s, { delay:$d, rotationY:0, rotationX:0, z:0,  ease:Expo.easeInOut} )
	TweenMax.to( $block, $s-.5, { delay:$d, x:0, y:0, autoAlpha:1, ease:Expo.easeInOut} )
}

function onMouseMove(event)
{
	mouseX = -(-(window.innerWidth * .5) + event.pageX) * .0025;
	mouseY = -(-(window.innerHeight * .5) + event.pageY ) * .01;
	mouseZ = -(radius) - (Math.abs(-(window.innerHeight * .5) + event.pageY ) - 200);
}

// loops and sets the carousel 3d properties
function looper()
{
	addX += mouseX
	TweenMax.to( carousel, 1, { rotationY:addX, rotationX:mouseY, ease:Quint.easeOut } )
	TweenMax.set( carousel, {z:mouseZ } )
	fps.text( 'Framerate: ' + counter.tick() + '/60 FPS' )	
}

function getRandomInt( $n )
{
	return Math.floor((Math.random()*$n)+1);	
}

</script>
</body>
</html>