<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
<title>BitCafe</title>
<link rel="stylesheet" type="text/css" href="/bitcafe/resources/css/bottomTab.css"><!-- reset, bottomTab.css -->
<link rel="stylesheet" type="text/css" href="/bitcafe/resources/css/other.css"><!-- reset, bottomTab.css -->
<link rel="icon" href="/bitcafe/resources/img/order.png">
</head>
<body>
<div class="container" ><!-- container start -->
<<<<<<< HEAD
	<img src="/bitcafe/resources/img/maintop.jpg" width="637" height="250" align="middle"/>
		<div class="title">
			<h1>Other</h1>
		</div>
	<h3><a href="">${memName }</a>님 환영합니다!</h3>
	<br/>
	<ul class="other">
	<li><a href="/bitcafe/orderList">장바구니</a></li>
	<br/>
	<li><a href="/bitcafe/orderList">주문내역</a></li>
	<br/>
	<li><a href="/bitcafe/orderList">회원정보수정</a></li>
	<br/>
	<li><a href="/bitcafe/memOut">로그아웃</a></li>
	<br/>
	<li><a href="/bitcafe/memOut">회원탈퇴</a></li>
=======
		<div class="top-img"></div>
		<div class="title">
			<h1>Others</h1>
		</div>
		<br/>
	<h3><a href="">${memName }</a>님 환영합니다!</h3>
	<br/>
	<ul class="other">
	<div>
		<button type="button" id="Btn" onClick="location.href='/bitcafe/DetailView'">
		<img src="/bitcafe/resources/img/others/장바구니.png" width="40" height="40"/>
		&nbsp;&nbsp;&nbsp;&nbsp;장바구니&nbsp;&nbsp;&nbsp;
		</button>
	</div>
	<br/>
	<div>
		<button type="button" id="Btn" onClick="location.href='/bitcafe/orderList'">
		<img src="/bitcafe/resources/img/others/주문내역.png" width="40" height="40"/>
		&nbsp;&nbsp;&nbsp;&nbsp;주문내역&nbsp;&nbsp;&nbsp;
		</button>
	</div>
	<br/>
	<div>
		<button type="button" id="Btn" onClick="location.href='/bitcafe/updateMem'">
		<img src="/bitcafe/resources/img/others/회원정보.png" width="40" height="40"/>
		회원정보수정
		</button>
	</div>
	<br/>                      
	<div>
		<button type="button" id="Btn" onClick="location.href='/bitcafe'">
		<img src="/bitcafe/resources/img/others/로그아웃.png" width="40" height="40"/>
		&nbsp;&nbsp;&nbsp;&nbsp;로그아웃&nbsp;&nbsp;&nbsp;
		</button>
	</div>
	<br/>
	<div>
		<button type="button" id="Btn" onClick="location.href='/bitcafe/memOut'">
		<img src="/bitcafe/resources/img/others/회원탈퇴.png" width="40" height="40"/>
		&nbsp;&nbsp;&nbsp;&nbsp;회원탈퇴&nbsp;&nbsp;&nbsp;
		</button>
	</div>
>>>>>>> fd1ef69e7ed981636a0b9c7342ee18dce5da3412
</ul>		
</div><!-- container end -->
	<%@ include file="bottomTab.jsp" %><!-- bottomTab.jsp -->
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.1.min.js"></script>
<script type="text/javascript" src="/bitcafe/resources/js/bottomTab.js"></script><!-- bottomTab.js -->
</body>
</html>