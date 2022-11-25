<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bitcafe 관리자 페이지</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="/bitcafe/resources/css/admincss/main.css">
<link rel="icon" href="/bitcafe/resources/img/order.png">
<style type="text/css">
div#menulist{
	background-color: black;
}
</style>
</head>
<body>
<div id="wrap">
	<%@ include file="page.jsp" %>
	<div id="content">
		<div id="category">
			<ul>
				<li class="menu" value="1"><a href="#">에스프레소</a></li>
				<li class="menu" value="2"><a href="#">디카페인</a></li>
				<li class="menu" value="3"><a href="#">프라푸치노</a></li>
				<li class="menu" value="4"><a href="#">아포가토</a></li>
				<li class="menu" value="5"><a href="#">병음료</a></li>
			</ul>
		</div><!-- nav -->
	</div><!-- container -->
	<!-- 메뉴리스트 동적처리 -->
	<div id="menuList"></div>
</div>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.1.min.js"></script>
<script type="text/javascript" src="/bitcafe/resources/js/admin.js"></script>
<script type="text/javascript" src="/bitcafe/resources/js/menuLoad.js"></script>
<script type="text/javascript" src="/bitcafe/resources/js/orderAlert.js"></script>
</body>
</html>