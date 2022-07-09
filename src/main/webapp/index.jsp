<<<<<<< HEAD
<%@page import="dto.MovieDto"%>
<%@page import="java.util.List"%>
=======
<%@page import="dao.UserDao"%>
>>>>>>> 5dbf8c770a6fb0d7c68de8dd4b4efb07e333e01d
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
List<MovieDto> list = (List<MovieDto>)request.getAttribute("movieList");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
<h2>HI~</h2>
<<<<<<< HEAD

<%
for(int i=0;i<list.size();i++){
	MovieDto dto = list.get(i);
%>
<h3><%=dto.getId()%></h3>
<h3><%=dto.getCast()%></h3>
<h3><%=dto.getContent()%></h3>
<h3><%=dto.getTitle()%></h3>
<%
}
%>

<a href="movie?param=movieById&id=2">영화상세정보</a>
<a href="movie?param=movieTimeListById&id=1">영화상영관및시간</a>
</script>
=======
<button>예매하기</button>
<button onclick="location.href='<%=request.getContextPath()%>/reservation?param=mypage'">마이페이지</button>
<button onclick="location.href='<%=request.getContextPath()%>/user?param=login'">로그인</button>
>>>>>>> 5dbf8c770a6fb0d7c68de8dd4b4efb07e333e01d
</body>
</html>
