<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 


회원 가입 화면


 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="Referrer" content="origin">
<meta http-equiv="Content-Script-Type" content="text/javascript">
<meta http-equiv="Content-Style-Type" content="text/css">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta name="viewport" content="width=1440">
<meta name="description" content="비트 시네마">
<title>회원가입 화면</title>
 <link rel="icon" href="<%=request.getContextPath() %>/img/logo.png" type="image/x-icon">
 
<%-- CSS --%>
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/login1.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/login2.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/login3.css">
<link rel="icon" href="img/favicon-228.png" type="image/x-icon">
<%-- javaScript --%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<style type="text/css">
.center {margin: auto;width: 60%;border: 3px solid #00ff00;padding: 10px;}
.join {display: inline-block;width: 100%;height: 52px;-o-object-fit: contain;object-fit: contain;border-radius: 6px;border: 1px solid #bfbfbf;background-color: transparent;
font-size: 18px;font-style: normal;font-stretch: normal;letter-spacing: -.5px;text-align: center;color: #757575;vertical-align: middle;white-space: nowrap;
color: #212121 !important;border-color:#333 !important;}
</style>
</head>
<body>
<%-- 회원가입 양식--%>
<%-- <div class="center">
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
</div> --%>


	<%-- 회원가입 양식--%>
<main id="content" role="main" class="contentArea on">
	<form action="<%=request.getContextPath() %>/user" method="post" id="frm">
		<input type="hidden" name="param" value="regiAf">
		<div class="signupLayout">
			<h2 class="titleSet titBig">
				<span>
					<img src="<%=request.getContextPath() %>/img/logo.png" style="width:80px; height:80px;">
				</span><br/>
                회원 가입
            </h2>
            <div class="section input">
            	<div class="inputSet" data-validate="E-mail is required">
                	<label for="userBusinessNo" class="inputTitle" >Email</label>
                	<input style="width: 430px;" id="email" name="email" type="email" value="" placeholder="Email을 입력해 주세요." maxlength="50">
                    <div class="alertTxt"></div>
                    <input type="button" class="strokeDarkGrey util sizeFull alignLeft " id="idBtn" value="아이디확인" style="color: #212121 !important;border-color:#333 !important;font-size: 10pt; width: 90px;float: right;margin-bottom: 15px;margin-top: 1px;height: 45px;">
            	</div>
            </div>
            <div class="section input">
                <div class="inputSet">
                	<label for="userBusinessNo" class="inputTitle">Password</label>
                	<input id="pwd" type="text" value="" name="pwd" placeholder="패스워드를 입력해 주세요." maxlength="10">
                    <div class="alertTxt"></div>
                </div>
            </div>
            <div class="section input">
                <div class="inputSet">
                	<label for="userBusinessNo" class="inputTitle">이름</label>
                	<input id="username" type="text" name="username" value="" placeholder="이름을 입력해 주세요." maxlength="10">
                    <div class="alertTxt"></div>
                </div>
            </div>
            <div class="confirmTempBtnWrap">
            	<input type="button" class="join strokeDarkGrey util sizeFull alignLeft"  onclick="join()" value="회원가입">
          	</div>
            <div class="btnConfirmWrap"></div>
        </div>
		<div id="modals-container"></div>
	</form>
</main>
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
		ischecked = false;
	});
<%-- 회원 가입 --%>
function join() {
	let email = $('#email').val();
	let pwd = $('#pwd').val();
	let username = $('#username').val();
	if (ischecked) {
// 		 document.tmpFrm.signup.data-validate();
	} else {
		alert('아이디 중복 검사를 해주세요!');
		return false;
	}
	if (email.trim() == '' || pwd.trim() == '' || username.trim() == '') {
		alert('입력정보를 확인해주세요!');
		return;
	}
	$('#frm').submit();
}
//아이디 중복 체크 실행 여부
let ischecked = false;
</script>
</body>
</html>