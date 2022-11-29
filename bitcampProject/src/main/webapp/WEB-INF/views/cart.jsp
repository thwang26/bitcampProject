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
<style type="text/css">
#cart-head, .cart-list-row-top, .menu-options-price {
	display: flex;
    justify-content: space-between;
}
</style>
</head>
<body>
<div class="container" ><!-- container start -->
	<input type="hidden" id="storeNum" value="${param.storeNum }">
	<div>장바구니</div>
	
	<div id="cart" class="col-12">
		<div class="" id="cart-head">
			<div class="col-4">
			    <input class="" type="checkbox" value="" aria-label="Checkbox for following text input">
				<span id="check_all">전체 선택</span>
			</div>
			<div class="col-4">
				<span><a href="" style="text-decoration: none;">선택삭제</a></span> |
				<span><a href="" style="text-decoration: none;">전체삭제</a></span>
			</div>
		</div>
		<hr/>
		
		<div id="cart-list">
			<div class="cart-list-row">
				<div class="cart-list-row-top">
					<input type="checkbox">
					<button type="button">X</button>
				</div>
				<div class="cart-list-row-info">
					<div id="menuName" align="left">아메리카노</div>
					<div class="menu-options-price">
						<div class="menu-option" style="display: inline-block;">
							<div id="takeoutOpt" style="display: inline-block;">매장컵</div> |
							<div id="sizeOpt" style="display: inline-block;">Small</div> |
							<div id="shotOpt" style="display: inline-block;">1</div>
						</div>
						<div id="orderPrice" style="display: inline-block;">5000</div>
					</div>
				</div>
				<hr>
			</div>
		</div>
	</div>
</div><!-- container end -->
	<%@ include file="bottomTab.jsp" %><!-- bottomTab.jsp -->
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.1.min.js"></script>
<script type="text/javascript" src="/bitcafe/resources/js/bottomTab.js"></script><!-- bottomTab.js -->
<script type="text/javascript" src="/bitcafe/resources/js/cart.js"></script>
</body>
</html>