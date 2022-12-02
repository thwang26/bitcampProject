<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
<title>BitCafe</title>

<link rel="stylesheet" type="text/css" href="/bitcafe/resources/css/bottomTab.css"><!-- reset, bottomTab.css -->
<link rel="stylesheet" type="text/css" href="/bitcafe/resources/css/member/memberIdSearchCss.css">

</head>
<body>
<div class="container" >

	<form name="writeForm" id="writeForm" method="post" align="left" action="" style="cursor: pointer;">
	<h3>아이디찾기</h3>
	<h6>ㅤ</h6>
	<table border="0" cellpadding="5" cellspacing="0"  >
		<div class="input-group input-group-lg">
			<input type="text" class="form-control" id="input_email" placeholder="이메일 입력" aria-label="Recipient's username"
				aria-describedby="button-addon2">
			<button class="btn btn-outline-secondary" type="button"
				id="button-addon2">이메일 전송</button>
			<div id="input_email"></div>
		</div>
		<span id="email_false"></span>
		
		<div class="input-group input-group-lg">
			<input type="text" class="form-control" id="input_code" placeholder="인증번호 입력" aria-label="Recipient's username"
				aria-describedby="button-addon2">
			<button class="btn btn-outline-secondary" type="button" id="button-addon3">확인</button>
		</div>
		</table>
	</form>
</div>
	
		
	
</div><!-- container end -->

<%@ include file="../bottomTab.jsp" %><!-- bottomTab.jsp -->
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.1.min.js"></script>
<script type="text/javascript" src="/bitcafe/resources/js/bottomTab.js"></script><!-- bottomTab.js -->
<script type="text/javascript"  src="/bitcafe/resources/js/idSearch.js"></script>

</body>
</html>











