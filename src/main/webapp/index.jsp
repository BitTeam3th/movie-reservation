<%@page import="dto.MovieDto"%>
<%@page import="java.util.List"%> 
<%@page import="dao.MovieDao"%>
<%@page import="dao.UserDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<%
MovieDao dao = MovieDao.getInstance();
List<MovieDto> lists = dao.getMovieList();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
   content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>비트 시네마</title>
<link rel="icon" href="img/logo.png" type="image/x-icon">
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

   <div class="wrap" id="wrap">
      <h1>
         BIT <span> 시네마 </span>
      </h1>
      <ul class="auto">
         <li class="btnStart"><i class="fas fa-play"></i></li>
         <li class="btnStop"><i class="fas fa-pause"></i></li>
      </ul>

      <div class="swiper-wrapper" id="swiper-wrapper1">

         <%
         for (int i = 0; i < lists.size(); i++) {
         %>
         <div class="swiper-slide">
            <div id="<%=i %>" class="inner"
               onclick="showLayer(this);">
               <div class="con">
                  <a href="javascript:void(0)"> <img id="img"
                     src="<%=lists.get(i).getImg_src()%>">
                     <h2><%=lists.get(i).getTitle()%></h2>
                     <p><%=lists.get(i).getContent()%></p>

                     <input type="hidden" value = "<%=lists.get(i).getDirector() %>">
                     <input type="hidden" value = "<%=lists.get(i).getRating() %>">
                     <input type="hidden" value = "<%=lists.get(i).getTicketingRate() %>">
                     <input type="hidden" value = "<%=lists.get(i).getAudienceNumber() %>">
                     <input type="hidden" value = "<%=lists.get(i).getGenre() %>">
                     <input type="hidden" value = "<%=lists.get(i).getOpenDate() %>">
                     <input type="hidden" value = "<%=lists.get(i).getRunningTime()%>">
                     <input type="hidden" value = "<%=lists.get(i).getDirector() %>">
                     <input type="hidden" value = "<%=lists.get(i).getCast()%>">

                  </a>
               </div>
            </div>
         </div>

         <%
         }
         %>

      </div>

      <!-- 좌우버튼 -->
      <div class="swiper-button-next"></div>
      <div class="swiper-button-prev"></div>

      <!-- 페이징 버튼 -->
      <div class="swiper-pagination"></div>

      <div id="SearchLayer" align='center' style="display: none">
         <div id="layerWhite">
            <div>
               <img id="id_layerImg" class="layerImg" src=""
                  style="">
            </div>
            <div class="layerDesc" style="">
               <br /> <span id="director"></span>
               <br /> <span id="spanDesc"></span>
               <br /> <span id="rating"></span>
               <br /> <span id="ticketingRate"></span>
               <br /> <span id="audienceNumber"></span>
               <br /> <span id="genre"></span>
               <br /> <span id="openDate"></span>
               <br /> <span id="runningTime"></span>
               <br /> <span id="director"></span>
               <br /> <span id="cast"></span>
            </div>

            <div>
               <a href="./reserve.jsp"><img class="layerButton"
                  src="img/bookButton.jpg"></a>
            </div>
         </div>
      </div>

   </div>

   <footer id="footer"></footer>
   <script src="./js/footer.js"></script>

   <script type="text/javascript">
   const swiper = new Swiper('.wrap',{   
       direction: "horizontal",
       loop: true,                  
       pagination: {
           el: '.swiper-pagination',
           type: 'fraction'
       },   
       navigation : {            
           nextEl: '.swiper-button-next',
           prevEl: '.swiper-button-prev',         
       },
       spaceBetween: 0,
       slidesPerView: "auto",
       grabCursor: true,
       centeredSlides :true,
       speed:1000,
       effect:"coverflow",   
       coverflowEffect: {
           rotate: 50,
           stretch: -100,
           depth: 400,
           modifier: 1,
           slideShadows: false,
       },
       autoplay: {
           delay:1000,      
           disableOnInteraction : true
       }   
   });

   // .btnStart 요소를 찾아서 btnStart에 저장
   const btnStart = document.querySelector(".btnStart");
   // .btnStop 요소를 찾아서 btnStop에 저장
   const btnStop = document.querySelector(".btnStop");

   //btnStart버튼을 클릭시 자동롤링 시작
   btnStart.addEventListener("click",()=>{
       swiper.autoplay.start();
   });

   //btnStart버튼을 클릭시 자동롤링 정지
   btnStop.addEventListener("click",()=>{
       swiper.autoplay.stop();
   });

   function wrapWindowByMask() {
       //화면의 높이와 너비를 구한다.
       var maskHeight = $(document).height();
       var maskWidth = $(window).width();

       //마스크의 높이와 너비를 화면 것으로 만들어 전체 화면을 채운다.
       $('#SearchLayer').css({ 'width': maskWidth, 'height': maskHeight });
   }

   /// 화면의 중앙에 레이어띄움
   function showLayer(input) {
       wrapWindowByMask();

        $("#SearchLayer").css("position", "absolute");
       $("#SearchLayer").css("top", Math.max(0, (($(window).height() - $("#SearchLayer").outerHeight()) / 2) + $(window).scrollTop() - 100) + "px");
       $("#SearchLayer").css("left", Math.max(0, (($(window).width() - $("#SearchLayer").outerWidth()) / 2) + $(window).scrollLeft()) + "px");
       $('#SearchLayer').show(); 
       
       
       console.log(input.children[0].children[0].children[0].src);
       console.log(input.children[0].children[2]);
       document.getElementById('id_layerImg').src= input.children[0].children[0].children[0].src;
       document.getElementById('spanDesc').innerText= input.children[0].children[0].children[2].innerText;
       document.getElementById('director').innerText= input.children[0].children[0].children[3].value;

       document.getElementById('rating').innerText= input.children[0].children[0].children[4].value;
       document.getElementById('ticketingRate').innerText= input.children[0].children[0].children[5].value;
       document.getElementById('audienceNumber').innerText= input.children[0].children[0].children[6].value;
       document.getElementById('genre').innerText= input.children[0].children[0].children[7].value;
       document.getElementById('openDate').innerText= input.children[0].children[0].children[8].value;
       document.getElementById('runningTime').innerText= input.children[0].children[0].children[9].value;
       document.getElementById('director').innerText= input.children[0].children[0].children[10].value;
       document.getElementById('cast').innerText= input.children[0].children[0].children[11].value

       setTimeout(function() {
           $('html').click((e) => {
               if (e.target.id !== 'layerWhite' && $(e.target).parents('#layerWhite').length === 0) {
                   location.reload();
               }
           });
         }, 500); 
   }

   function closeLayer() {
       loacation.reload();
   }
   </script>
</body>
</html>