<%@page import="java.util.ArrayList"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
List<HashMap<String, Object>> dto = new ArrayList<HashMap<String, Object>>();
dto = (List<HashMap<String, Object>>)request.getAttribute("movieTimeList");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3><%=dto.get(0).get("id") %></h3>
<h3><%=dto.get(0).get("title") %></h3>
<h3><%=dto.get(0).get("img_src") %></h3>
<h3><%=dto.get(0).get("time") %></h3>
<h3><%=dto.get(0).get("theater") %></h3>
<h3><%=dto.get(1).get("id") %></h3>
<h3><%=dto.get(1).get("title") %></h3>
<h3><%=dto.get(1).get("img_src") %></h3>
<h3><%=dto.get(1).get("time") %></h3>
<h3><%=dto.get(1).get("theater") %></h3>
</body>
</html>