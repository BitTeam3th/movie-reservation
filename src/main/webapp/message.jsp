<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- 


로직 수행후 완료 메세지 출력 화면 


--%>
<%
String msg = request.getParameter("msg");
%>
<%
if (msg.equals("OK")) { //회원가입 성공
%>
<script type="text/javascript">
	alert('회원 가입 되었습니다!!');
	location.href = 'user?param=login';
</script>

<%
} else if (msg.equals("NO")){ //회원가입 실패
%>
<script type="text/javascript">
	alert('가입실패! 다시 작성해 주십시오!');
	location.href = 'user?param=regi';
</script>
<%
} else if (msg.equals("login")) { //로그인 성공
%>
<script type="text/javascript">
	alert('환영합니다!');
	location.href = 'user?param=main';
</script>
<%
} else if(msg.equals("loginFail")) { //로그인 실패
%>
<script type="text/javascript">
	alert('로그인 정보를 확인해주세요!');
	location.href = 'user?param=login';
</script>
<%
}
%>