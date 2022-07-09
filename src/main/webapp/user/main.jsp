<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 


로그인 완료 후 이동 화면(임시)


--%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>환영페이지</title>
</head>
<body>
	<h2>환영합니다</h2>
	<input type="button" id="logout" onclick="logout()" value="로그아웃">
	
	<script type="text/javascript">
	function logout() {
		location.href='<%=request.getContextPath()%>/user?param=logout';
	};
	</script>
</body>
</html>