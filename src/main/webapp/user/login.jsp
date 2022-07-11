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
        <div class="loginContent" style="margin-top: 10%;">
            <div class="loginWrap lotteOn">
                <h2 class="titLogin">로그인</h2>
           		<form action="<%=request.getContextPath() %>/user" method="post" id="frm">
           		<input type="hidden" name="param" value="loinAf">
	                <div class="section input loginForm">
	                    <div class="inputSet login">
	                        <div>
	                        	<input type="hidden" id="tempid" name="tempid">
	                        	<input name="email" type="text" placeholder="이메일 아이디" id="email" title="아이디 또는 이메일 입력">
	                            <div class="alertTxt"></div>
	                        </div>
	                        <div class="inputSet login">
	                            <div class="passwordWrap">
	                            	<input type="hidden" id="tempPwd" name="tempPwd">
	                            	<input id="pwd" type="password" placeholder="비밀번호" name="pwd"
	                                    autocomplete="new-password" title="비밀번호 입력 (8~15자리 영문+숫자+특수문자 조합)">
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
                   		<input id="idSaveCheck" type="checkbox" name="idSaveCheck">
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
<script type="text/javascript">
	<%-- 아이디 기억하기 --%>
	$(document).ready(function() {
	    var userInputId = getCookie("userInputId");
	    var setCookieYN = getCookie("setCookieYN");
	    
	    if (setCookieYN == 'Y') {
	        $("#idSaveCheck").prop("checked", true);
	    } else {
	        $("#idSaveCheck").prop("checked", false);
	    }
	    
	    $("#email").val(userInputId); 
	    <%-- 로그인 버튼 클릭 --%>
	    $('#btnLogin, #idSaveCheck').click(function() {
	        if ($("#idSaveCheck").is(":checked")){ 
	            var userInputId = $("#email").val();
	            setCookie("userInputId", userInputId, 60); 
	            setCookie("setCookieYN", "Y", 60);
	        } else {
	            deleteCookie("userInputId");
	            deleteCookie("setCookieYN");
	        }
	    });
	});

	<%-- 쿠키값 Set --%>
	function setCookie(cookieName, value, exdays) {
	    var exdate = new Date();
	    exdate.setDate(exdate.getDate() + exdays);
	    var cookieValue = escape(value) + ((exdays==null) ? "" : "; expires=" + 
	    exdate.toGMTString());
	    document.cookie = cookieName + "=" + cookieValue;
	}
	
	<%-- 쿠키값 Delete --%>
	function deleteCookie(cookieName) {
	    var expireDate = new Date();
	    expireDate.setDate(expireDate.getDate() - 1);
	    document.cookie = cookieName + "= " + "; expires=" + expireDate.toGMTString();
	}

	<%-- 쿠키값 가져오기 --%>
	function getCookie(cookie_name) {
	    var x, y;
	    var val = document.cookie.split(';');
	    
	    for (var i = 0; i < val.length; i++) {
	        x = val[i].substr(0, val[i].indexOf('='));
	        y = val[i].substr(val[i].indexOf('=') + 1);
	        x = x.replace(/^\s+|\s+$/g, ''); // 앞과 뒤의 공백 제거하기
	        
	        if (x == cookie_name) {
	          return unescape(y); // unescape로 디코딩 후 값 리턴
	        }
	    }
	}
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