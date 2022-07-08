<%@page import="dto.MovieDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
MovieDto dto = (MovieDto)request.getAttribute("movie");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3><%=dto.getId()%></h3>
<h3><%=dto.getContent()%></h3>
<h3><%=dto.getDirector()%></h3>
<h3><%=dto.getCast()%></h3>
<h3><%=dto.getTitle()%></h3>
</body>
</html>