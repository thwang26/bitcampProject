<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
<title>BitCafe</title>
<!-- bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="/bitcafe/resources/css/bottomTab.css"><!-- reset, bottomTab.css -->
<link rel="icon" href="/bitcafe/resources/img/order.png">
</head>
<body>
<div class="container" ><!-- container start -->
<form id="orderMenuForm" method="post">
	<input type="hidden" id="id" name="id" value="hong"> <!-- member id -->
	<input type="hidden" id="storeNum" name="storeNum" value="${param.storeNum}">
	<input type="hidden" id="seqOrder" name="seqOrder" value="">
		
	<h2>결제하기</h2>
	<h3>주문 내역</h3>
	<br>
	<input type="text" id="menuName" name="menuName">
	<input type="text" id="orderPrice" name="orderPrice">원
	<input type="text" id="qty" name="qty">	
	<input type="text" id="sizeOpt" name="sizeOpt">
	<input type="text" id="takeoutOpt" name="takeoutOpt">
	<input type="text" id="shotOpt" name="shotOpt">
	
	<br>
	<input type="text" id="storeName">점에서 수령
	<input type="text" id="storeAddr">
	
	<input type="button" id="orderMenuBtn" value="결제하기">  
</form>
</div><!-- container end -->
	<%@ include file="bottomTab.jsp" %><!-- bottomTab.jsp -->
<!-- bootstrap -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.1.min.js"></script>
<script type="text/javascript" src="/bitcafe/resources/js/bottomTab.js"></script><!-- bottomTab.js -->
<script type="text/javascript" src="/bitcafe/resources/js/orderMenu.js"></script>

</body>
</html>