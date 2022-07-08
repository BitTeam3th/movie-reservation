<%@page import="dao.UserDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>HI~</h2>
<button>예매하기</button>
<button onclick="location.href='<%=request.getContextPath()%>/reservation?param=mypage'">마이페이지</button>
<button>로그인화면</button>
<button onclick="location.href='<%=request.getContextPath()%>/user?param=login'">로그인</button>
</body>
</html>
