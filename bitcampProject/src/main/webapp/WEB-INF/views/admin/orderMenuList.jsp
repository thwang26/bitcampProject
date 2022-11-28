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
</head>
<body>
<div id="wrap">
	<%@ include file="page.jsp" %>
	<div id="content">
		<h3>접수된 주문</h3>
		<div id="income"></div>
		<h3>주문확정</h3>
		<div id="confirm"></div>
		<h3>완료</h3>
		<div id="complete"></div>
	</div><!-- content -->
</div>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.1.min.js"></script>
<script type="text/javascript" src="/bitcafe/resources/js/admin.js"></script>
<script type="text/javascript" src="/bitcafe/resources/js/orderLoad.js"></script>
<!--<script type="text/javascript" src="/bitcafe/resources/js/orderAlert.js"></script>-->
</body>
</html>