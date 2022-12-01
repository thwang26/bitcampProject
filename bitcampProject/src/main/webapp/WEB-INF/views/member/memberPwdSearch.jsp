<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
<title>BitCafe</title>

<link rel="stylesheet" type="text/css" href="/bitcafe/resources/css/topImg.css"><!-- topImg.css //background-imge -->
<link rel="stylesheet" type="text/css" href="/bitcafe/resources/css/scroll.css"> <!-- scroll.css -->
<link rel="stylesheet" type="text/css" href="/bitcafe/resources/css/bottomTab.css"><!-- reset, bottomTab.css -->
<link rel="icon" href="/bitcafe/resources/img/order.png">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">

<style type="text/css">
* {
	margin: 0;
	padding: 0; /*다 달라붙게한다 디폴트값*/
}

form{
margin-top: 50%;
}


</style>


</head>
<body>

<h1>비밀번호 찾기</h1>
	<div class="input-group input-group-lg">
		<input type="text" class="form-control" id="input_Id" placeholder="아이디 입력" aria-label="Recipient's username"
			aria-describedby="button-addon4">
		<div id="input_IdDiv"></div>
	<div class="input-group input-group-lg">
		<input type="text" class="form-control" id="input_email2" placeholder="이메일 입력" aria-label="Recipient's username"
			aria-describedby="button-addon4">
		<div id="input_email2Div"></div>
		<button class="btn btn-outline-secondary" type="button"
			id="button-addon4">이메일 전송</button>
	</div>
	<span id="email_false">회원정보가 없습니다.</span>
	
	<div class="input-group input-group-lg">
		<input type="text" class="form-control" id="input_code" placeholder="인증번호 입력" aria-label="Recipient's username"
			aria-describedby="button-addon4">
		<button class="btn btn-outline-secondary" type="button" id="button-addon5">확인</button>
	</div>
	
	
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.1.min.js"></script>
<script type="text/javascript"  src="/bitcafe/resources/js/pwdSearch.js"></script>
		
	
</div><!-- container end -->

<%@ include file="../bottomTab.jsp" %><!-- bottomTab.jsp -->
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.1.min.js"></script>
<script type="text/javascript" src="/bitcafe/resources/js/scroll.js"></script><!-- scroll.js -->
<script type="text/javascript" src="/bitcafe/resources/js/bottomTab.js"></script><!-- bottomTab.js -->

</body>
</html>











