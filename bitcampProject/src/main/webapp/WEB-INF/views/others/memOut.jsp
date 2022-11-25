<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
<title>BitCafe</title>
<link rel="stylesheet" type="text/css" href="/bitcafe/resources/css/bottomTab.css"><!-- reset, bottomTab.css -->
<link rel="stylesheet" type="text/css" href="/bitcafe/resources/css/memOut.css"><!-- reset, bottomTab.css -->
<link rel="icon" href="/bitcafe/resources/img/order.png">
</head>
<body>
<div class="container" ><!-- container start -->
	<img src="/bitcafe/resources/img/maintop.jpg" width="637" height="250" align="middle"/>
		<div class="title">
			<h1>Membership</h1>
			<h2>Withdrawal</h2>
		</div>
	<h3><a href="">${memName }</a>님 환영합니다!</h3>
	<br/>
	<ul class="other">
	<li><a href="/bitcafe/views/others/orderList.jsp">장바구니</a></li>
	<br/>
	<li><a href="/bitcafe/views/others/orderList.jsp">주문내역</a></li>
	<br/>
	<li><a href="/bitcafe/views/others/orderList.jsp">회원정보수정</a></li>
	<br/>
	<li><a href="/bitcafe/views/others/memOut.jsp">로그아웃</a></li>
	<br/>
	<li><a href="/bitcafe/views/others/orderList.jsp">회원탈퇴</a></li>
</ul>		
</div><!-- container end -->
	<%@ include file="../bottomTab.jsp" %><!-- bottomTab.jsp -->
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.1.min.js"></script>
<script type="text/javascript" src="/bitcafe/resources/js/bottomTab.js"></script><!-- bottomTab.js -->
</body>
</html>