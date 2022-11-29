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
	<div>장바구니</div>
	
	<div>주문 메뉴</div>
	<div id="cart">
		<div class="input-group mb-3" id="cart-head">
		  <div class="input-group-text">
		    <input class="form-check-input mt-0" type="checkbox" value="" aria-label="Checkbox for following text input">
		  </div>
		  <span id="check_all">전체 선택</span>
		  <span><a href="">선택삭제</a></span> |
		  <span><a href="">전체삭제</a></span>
		</div>
		
		<div id="cart-list"></div>
	</div>
</div><!-- container end -->
	<%@ include file="bottomTab.jsp" %><!-- bottomTab.jsp -->
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.1.min.js"></script>
<script type="text/javascript" src="/bitcafe/resources/js/bottomTab.js"></script><!-- bottomTab.js -->
</body>
</html>