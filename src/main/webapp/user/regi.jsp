<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 


회원 가입 화면


 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 화면</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<style type="text/css">
.center {margin: auto;width: 60%;border: 3px solid #00ff00;padding: 10px;}
</style>
</head>
<body>
<h2>회원 가입</h2>
<%-- 회원가입 양식--%>
<div class="center">
	<form action="<%=request.getContextPath() %>/user" method="post" id="frm">
		<input type="hidden" name="param" value="regiAf">
		<table border="1">
			<tr>
				<th>이메일</th>
				<td>
					<input type="text" id="email" name="email" size="20">
					<p id="idcheck" style="font-size: 8px"></p>
					<input type="button" id="idBtn" value="아이디확인">
				</td>
			</tr>
			<tr>
				<th>패스워드</th>
				<td>
					<input type="text" id="pwd" name="pwd" size="20">
				</td>
			</tr>
			<tr>
				<th>이름</th>
				<td>
					<input type="text" id="username" name="username" size="20">
				</td>
			</tr>

			<tr>
				<td colspan="2">
					<input type="button" onclick="join()" value="회원가입">
				</td>
			</tr>
			
		</table>
	
	</form>
</div>
<script type="text/javascript">
<%-- 아이디 중복 체크 --%>
	$('#idBtn').click(function() {
		ischecked = true;
		let check = $('#email').val();
		if (!check) {
			alert('아이디를 입력해주세요!');
			$('#email').focus();
			return;
		}
		$.ajax({
			url : '<%=request.getContextPath()%>/user?param=idCheck',
			type : 'post',
			dataType : 'json',
			data : {email : check},
			success : function(data) {
				console.log(data.msg)
				if (data.msg.trim() == 'YES') {
					alert('사용 가능한 아이디 입니다!');
				} else {
					alert('이미 존재하는 아이디 입니다 다시 입력해주세요!');
					$('#email').val('').focus();
// 					ischecked = false;
				}
			},
			error: function (e) {
				alert('error!');
			}
		});
	});
	
	$('#email').click( function() {
		alert('1111')
		ischecked = false;
	});
<%-- 회원 가입 --%>
function join() {
	let email = $('#email').val();
	let pwd = $('#pwd').val();
	let username = $('#username').val();
	if (email.trim() == '' || pwd.trim() == '' || username.trim() == '') {
		alert('입력정보를 확인해주세요!');
		return;
	}
	if (ischecked) {
// 		 document.tmpFrm.signup.data-validate();
	} else {
		alert('아이디 중복 검사를 해주세요!');
		return false;
	}
	$('#frm').submit();
}
//아이디 중복 체크 실행 여부
let ischecked = false;
</script>
</body>
</html>