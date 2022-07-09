<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 



로그인 화면



--%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="Referrer" content="origin">
<meta http-equiv="Content-Script-Type" content="text/javascript">
<meta http-equiv="Content-Style-Type" content="text/css">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta name="viewport" content="width=1440">
<meta name="description" content="비트 시네마">
<title>로그인</title>
<%-- CSS --%>
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/login1.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/login2.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/login3.css">
<link rel="icon" href="img/favicon-228.png" type="image/x-icon">
<%-- javaScript --%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="http://lab.alexcican.com/set_cookies/cookie.js" type="text/javascript" ></script>
<style type="text/css">
.center {margin: auto;width: 60%;border: 3px solid #00ff00;padding: 10px;}
</style>
</head>
<body>
<%-- 로그인 화면 --%>
	<main id="content" role="main" class="contentArea on">
        <div class="loginContent">
            <div class="loginWrap lotteOn">
                <h2 class="titLogin">로그인</h2>
           		<form action="<%=request.getContextPath() %>/user" method="post" id="frm">
           		<input type="hidden" name="param" value="loinAf">
	                <div class="section input loginForm">
	                    <div class="inputSet login">
	                        <div>
	                        	<input type="hidden" id="tempid" name="tempid">
	                        	<input name="email" type="text" placeholder="아이디 또는 이메일 아이디" id="email" title="아이디 또는 이메일 입력">
	                            <div class="alertTxt"></div>
	                        </div>
	                        <div class="inputSet login">
	                            <div class="passwordWrap">
	                            	<input type="hidden" id="tempPwd" name="tempPwd">
	                            	<input id="pwd" type="password" placeholder="8~15자리 영문+숫자+특수문자 조합" name="pwd"
	                                    autocomplete="new-password" title="비밀번호 입력 (8~15자리 영문+숫자+특수문자 조합)">
	                           		<button type="button">
	                           			<span class="blind">비밀번호 숨기기</span>
	                      			</button>
	                      		</div>
	                            <div class="alertTxt"></div>
	                        </div>
	                    </div>
	                    <div class="btnConfirmWrap">
		                    <button data-v-46bd225e="" class="hasBgColor bgColorRed util sizeFull alignLeft" id="btnLogin">
		        				<span data-v-46bd225e="" class="inner">
		                        	<span data-v-46bd225e="" class="">로그인하기</span>
		                        </span>
		       				</button>
	       				</div>
			        </div>
               	</form>
                <div class="autoLogin">
                    <div class="checkboxSet">
                   		<input id="chk_save_id" type="checkbox" name="chk_save_id">
                   			<label for="checkbox1">아이디 저장</label>
               		</div>
      					<input id="checkbox11" type="hidden" name="checkbox" value="N">
                    <div class="btnFindIdPasswordWrap">
						<button class="register" id="btnRgst">회원가입</button>
					</div>
               	</div>                       
            </div>
       	</div>
	</main>
<%-- 아이디 기억하기 --%>
<script type="text/javascript">
	 let user_id = $.cookie("user_id");
	 if (user_id != null) {
		 $('#email').val(user_id);
		 $('#chk_save_id').prop("checked", true);			 
	 }
	 $('#chk_save_id').click(function() {
		if ($('#chk_save_id').is(':checked')) {
			if ($('#email').val().trim() =='') {
				alert('아이디를 입력해주세요');
				$('#chk_save_id').prop("checked", false);	
			} else {
				//쿠키 저장
				$.cookie("user_id", $('#email').val().trim(), {expires:7, path:'./'});
			}
		} else {
			$.removeCookie("user_id");
		}
	 });
	 <%-- 로그인 --%>
	 $('#btnLogin').click(function() {
		$('#frm').submit();
	 });
	 <%-- 회원가입 --%>
	 $('#btnRgst').click(function() {
		 location.href='<%=request.getContextPath()%>/user?param=regi';
	 });
</script>
</body>
</html>