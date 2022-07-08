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

<link rel="icon" href="img/favicon-228.png" type="image/x-icon">

<link rel="stylesheet" href="./css/login1.css">
<link rel="stylesheet" href="./css/login2.css">
<link rel="stylesheet" href="./css/login3.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="http://lab.alexcican.com/set_cookies/cookie.js" type="text/javascript" ></script>
<style type="text/css">
.center {margin: auto;width: 60%;border: 3px solid #00ff00;padding: 10px;}
</style>
</head>
<body>
<!-- <h2>login page</h2> -->
<%-- 로그인 화면 --%>
<%-- 	<div class="center">
		<form action="<%=request.getContextPath() %>/user" method="post">
			<input type="hidden" name="param" value="loinAf">
			<table border="1">
				<tr>
					<th>아이디</th>
					<td><input type="text" id="email" name="email" size="20"><br>
						<input type="checkbox" id="chk_save_id">remember me</td>
				</tr>
				<tr>
					<th>패스워드</th>
					<td><input type="password" id="pwd" name="pwd" size="20">
					</td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="로그인"><a href="<%=request.getContextPath()%>/user?param=regi">회원가입</a></td>
				</tr>
			</table>
		</form>
	</div> --%>
	
	
	<main id="content" role="main" class="contentArea on">
        <div class="loginContent">
            <div class="loginWrap lotteOn">
                <h2 class="titLogin">
                    로그인
                </h2>
                <div class="section input loginForm">
                    <div class="inputSet login">
                        <div><input type="hidden" id="tempid" name="tempid"><input name="inId" type="text"
                                placeholder="아이디 또는 이메일 아이디" id="inId" title="아이디 또는 이메일 입력">
                            <div class="alertTxt">
                                <!---->
                            </div>
                        </div>
                        <div class="inputSet login">
                            <div class="passwordWrap"><input type="hidden" id="tempPwd" name="tempPwd"><input
                                    id="Password" type="password" placeholder="8~15자리 영문+숫자+특수문자 조합" name="Password"
                                    autocomplete="new-password" title="비밀번호 입력 (8~15자리 영문+숫자+특수문자 조합)"><button
                                    type="button"><span class="blind">비밀번호 숨기기</span></button></div>
                            <div class="alertTxt">
                                <!---->
                            </div>
                        </div>
                    </div>
                    <div class="btnConfirmWrap"><button data-v-46bd225e=""
                            class="hasBgColor bgColorRed util sizeFull alignLeft"><span data-v-46bd225e=""
                                class="inner">
                                <!----><span data-v-46bd225e="" class="">
                                    로그인하기
                                </span>
                                <!----></span></button></div>
                    <div class="autoLogin">
                        <div class="checkboxSet"><input id="checkbox1" type="checkbox" name="checkbox1"
                                checked="checked"><label for="checkbox1">아이디 저장</label></div><input id="checkbox11"
                            type="hidden" name="checkbox" value="N">
                        <div class="btnFindIdPasswordWrap"><button class="findIdPassword">
                                ID/PW 찾기
                            </button><button class="register">
                                회원가입
                            </button></div>
                    </div>
                    <div class="socialSignupWrap"><button data-v-46bd225e=""
                            class="kakaoLoginBtn hasBgColor hasIcon bgColorKakao util sizeFull alignLeft"
                            title="새 창 열림"><span data-v-46bd225e="" class="inner"><span data-v-46bd225e=""
                                    class="icon kakaoLogo"></span><span data-v-46bd225e="" class="">
                                    카카오로 시작하기
                                </span>
                                <!----></span></button><button data-v-46bd225e=""
                            class="naverLoginBtn hasBgColor hasIcon bgColorNaver util sizeFull alignLeft"
                            title="새 창 열림"><span data-v-46bd225e="" class="inner"><span data-v-46bd225e=""
                                    class="icon naverLogo"></span><a data-v-46bd225e="" href="#" class="naver"
                                    style="display: none;"></a>
                                네이버로 시작하기
                                <!----></span></button><button data-v-46bd225e=""
                            class="facebookLoginBtn hasBgColor hasIcon bgColorFacebook util sizeFull alignLeft"
                            title="새 창 열림"><span data-v-46bd225e="" class="inner"><span data-v-46bd225e=""
                                    class="icon facebookLogo"></span><span data-v-46bd225e="" class="">
                                    페이스북으로 시작하기
                                </span>
                                <!----></span></button><button data-v-46bd225e=""
                            class="otherLoginBtn util sizeFull alignLeft" title="새 창 열림"><span data-v-46bd225e=""
                                class="inner">
                                <!----><span data-v-46bd225e="" class="">
                                    휴대폰으로 로그인
                                </span>
                                <!----></span></button>
                        <!---->
                    </div>
                </div>
            </div>
        </div>
        <div id="modals-container"></div>
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
</script>
</body>
</html>