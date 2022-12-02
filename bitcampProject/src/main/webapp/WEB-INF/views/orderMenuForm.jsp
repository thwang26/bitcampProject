<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
<title>BitCafe</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="/bitcafe/resources/css/cart.css"><!-- reset, bottomTab.css -->
<link rel="icon" href="/bitcafe/resources/img/order.png">
</head>
<body>
<div class="container" ><!-- container start -->
<form id="orderMenuForm" method="post">
	<input type="hidden" id="id" name="id" value="${userId }"> <!-- member id -->
	<input type="hidden" id="orderGroup" name="orderGroup" value="${param.orderGroup }">
	
	<div class="row" id="storeList_head">
		<div class="col"><div class="storeViewHead" id="categoryHead">결제하기</div></div>
	</div>
	<br>
	<div id="order-list_start">주문 내역</div>	
	<br>
	<div id="store-info">
		<div id="storeName"></div>
	</div>
	
	<div id="order-list"></div>
	
	<span>최종 결제 금액</span>
	<div id="totalPrice"></div>

	<input type="button" class="orderMenuBtn" id="orderMenuBtn" value="">  
</form>
</div><!-- container end -->
	<%@ include file="bottomTab.jsp" %><!-- bottomTab.jsp -->
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.1.min.js"></script>
<script type="text/javascript" src="/bitcafe/resources/js/bottomTab.js"></script><!-- bottomTab.js -->
<script type="text/javascript" src="/bitcafe/resources/js/orderMenu.js"></script>

</body>
</html>