<%@page import="dto.MovieDto"%>
<%@page import="java.util.List"%>
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
</body>
</html>