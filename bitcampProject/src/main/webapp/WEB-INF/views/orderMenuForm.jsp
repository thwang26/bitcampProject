<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
<title>BitCafe</title>
<link rel="stylesheet" type="text/css" href="/bitcafe/resources/css/bottomTab.css"><!-- reset, bottomTab.css -->
<link rel="icon" href="/bitcafe/resources/img/order.png">
</head>
<body>
<div class="container" ><!-- container start -->
<form id="orderMenuForm" method="post">
	<input type="hidden" id="id" name="id" value="${userId }"> <!-- member id -->
	<input type="hidden" id="orderGroup" name="orderGroup" value="${param.orderGroup }">
		
	<h2>결제하기</h2>
	<h3>주문 내역</h3>
	
	<div id="store-info">
		<div id="storeName"></div>
	</div>
	
	<div id="order-list"></div>
	
	<span>최종 결제 금액</span>
	<div id="totalPrice"></div>

	<input type="button" id="orderMenuBtn" value="결제하기">  
</form>
</div><!-- container end -->
	<%@ include file="bottomTab.jsp" %><!-- bottomTab.jsp -->
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.1.min.js"></script>
<script type="text/javascript" src="/bitcafe/resources/js/bottomTab.js"></script><!-- bottomTab.js -->
<script type="text/javascript" src="/bitcafe/resources/js/orderMenu.js"></script>

</body>
</html>