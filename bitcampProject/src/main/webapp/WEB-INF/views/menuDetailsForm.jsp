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
	<form id="menuDetailsForm">
	<input type="hidden" id="seq" name="seq" value="1"> <!-- 메뉴시퀀스 -->
	<input type="hidden" id="id" name="id" value="hong"> <!-- member id -->
	<input type="hidden" id="storeNum" name="storeNum" value="1">
	
	<div class="card" style="width: 90%;">
		<img src="" class="card-img-top" alt="커피이미지">
		<div class="card-body">
	    	<h3 class="card-title" align="left">
	    		<input type="text" name="menuName" id="menuName" />
	    	</h3>
	    	<p class="card-text" style="font-size:14pt;" align="left">
	    		<input type="text" name="menuContent" id="menuContent" />
	    	</p>
		</div>
		<ul class="list-group list-group-flush">
			<li class="list-group-item">사이즈
				<div class="btn-group" role="group" aria-label="size group">
					<input type="radio" class="btn-check" name="sizeOpt" id="sizeOpt1" autocomplete="off" checked>
					<label class="btn btn-outline-primary" for="sizeOpt1">Small</label>
				
					<input type="radio" class="btn-check" name="sizeOpt" id="sizeOpt2" autocomplete="off">
					<label class="btn btn-outline-primary" for="sizeOpt2">Regular</label>
				
					<input type="radio" class="btn-check" name="sizeOpt" id="sizeOpt3" autocomplete="off">
					<label class="btn btn-outline-primary" for="sizeOpt3">Large</label>
				</div>
			</li>
			<li class="list-group-item">컵선택
				<div class="btn-group" role="group" aria-label="takeout group">
					<input type="radio" class="btn-check" name="takeoutOpt" id="takeoutOpt1" autocomplete="off" checked>
					<label class="btn btn-outline-primary" for="takeoutOpt1">매장컵</label>
				
					<input type="radio" class="btn-check" name="takeoutOpt" id="takeoutOpt2" autocomplete="off">
					<label class="btn btn-outline-primary" for="takeoutOpt2">개인컵</label>
				
					<input type="radio" class="btn-check" name="takeoutOpt" id="takeoutOpt3" autocomplete="off">
					<label class="btn btn-outline-primary" for="takeoutOpt3">일회용컵</label>
				</div>
			</li>
			<li class="list-group-item">에스프레소 샷
				<button type="button" class="btn btn-outline-primary">-</button>
				<input type="text" name="shotOpt" id="shotOpt" value="0" size=1 />
				<button type="button" class="btn btn-outline-primary">+</button>
			</li>
		</ul>
		<div class="card-body">
			<button type="button" class="btn btn-outline-primary">-</button>
			<input type="text" name="qty" id="qty" value="1" size=1 />
			<button type="button" class="btn btn-outline-primary">+</button>
			<input type="text" name="menuPrice" id="menuPrice">
			<input type="hidden" name="orderPrice" id="orderPrice"> <br>
			<button type="button" class="btn btn-secondary btn-lg">담기</button>
			<button type="button" class="btn btn-secondary btn-lg">주문하기</button>
		</div>
	</div>
	</form>
</div><!-- container end -->
	<%@ include file="bottomTab.jsp" %><!-- bottomTab.jsp -->
<!-- bootstrap -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.1.min.js"></script>
<script type="text/javascript" src="/bitcafe/resources/js/bottomTab.js"></script><!-- bottomTab.js -->
<script type="text/javascript" src="/bitcafe/resources/js/menuDetails.js"></script>

</body>
</html>