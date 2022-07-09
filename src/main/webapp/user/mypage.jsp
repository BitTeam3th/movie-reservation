<%@page import="org.w3c.dom.Document"%>
<%@page import="dto.ReservationDto"%>
<%@page import="java.util.List"%>
<%@page import="dao.ReservationDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
ReservationDao dao = ReservationDao.getInstance();
List<ReservationDto> list = dao.getReservationList("a@a.com");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나의 예매</title>
<link rel="icon" href="<%=request.getContextPath() %>/img/logo.png" type="image/x-icon">
<link rel="stylesheet"
	href="https://unpkg.com/swiper/swiper-bundle.min.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/style.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/headerFooter.css">

</head>
<body>
	<header id="header"></header>
	<script src="<%=request.getContextPath() %>/js/header.js"></script>
	<h2>예매내역</h2>
	<div align="center">
		<table border="1">
			<col width="100">
			<col width="200">
			<col width="200">
			<col width="300">
			<col width="200">
			<tr>
				<th></th>
				<th></th>
				<th>예매영화</th>
				<th>관람일시</th>
				<th>인원수</th>
			</tr>
			<%
			for (int i = 0; i < list.size(); i++) {
			%>
			<tr>
				<td><input type="radio" id=<%=i%>
					value=<%=list.get(i).getReservationId()%> name="movie"></td>
				<td><img alt="" src="<%=list.get(i).getMovieImg()%>" width=300
					height=400></td>
				<td><%=list.get(i).getMovieTitle()%></td>
				<td><%=list.get(i).getMovieTime()%></td>
				<td><%=list.get(i).getPersonnel()%></td>
			</tr>
			<%
			}
			%>
		</table>
		<br>
		<button onclick="deleteReservation()">예매취소</button>
	</div>

	<footer id="footer"></footer>
	<script src="<%=request.getContextPath() %>/js/footer.js"></script>
	<script type="text/javascript">
	function deleteReservation(){
		const reservationMovies
		  = document.getElementsByName('movie');
		reservationMovies.forEach((node) => {
		    if(node.checked)  {
		     location.href=getContextPath()+'/reservation?param=cancel&reservationid='+node.value;
		    }
		  })
	}
	function getContextPath() {
	    var hostIndex = location.href.indexOf( location.host ) + location.host.length;
	    return location.href.substring( hostIndex, location.href.indexOf('/', hostIndex + 1) );
	}
	  
	</script>
</body>
</html>