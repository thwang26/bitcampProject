<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bitcafe 관리자 페이지</title>
<<<<<<< HEAD
=======
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
>>>>>>> main
<link rel="stylesheet" type="text/css" href="/bitcafe/resources/css/admincss/main.css">
<link rel="icon" href="/bitcafe/resources/img/order.png">
</head>
<body>
<div id="wrap">
<<<<<<< HEAD
	<%@ include file="page.jsp" %>
	<div id="content">
		<a href="#" class="order"><h3>접수된 주문</h3></a>
		<div id="income">
			<li>접수1 <input type="button" value="접수1" class="ok"/><input type="button" value="취소" class="no"/></li>
			<li>접수2 <input type="button" value="접수2" class="ok"/><input type="button" value="취소" class="no"/></li>
			<li>접수3 <input type="button" value="접수"/><input type="button" value="취소"/></li>
			<li>접수4 <input type="button" value="접수"/><input type="button" value="취소"/></li>
			<li>접수5 <input type="button" value="접수"/><input type="button" value="취소"/></li>
		</div>
		<a href="#" class="order"><h3>주문확정</h3></a>
		<div id="confirm">
			<li>주문2 <input type="button" value="완료" class="end"/></li>
			<li>주문3 <input type="button" value="완료" class="end"/></li>
			<li>주문1 <input type="button" value="완료" class="end"/></li>
		</div>
		<a href="#" class="order"><h3>완료</h3></a>
		<div id="complete">
			<li>주문1</li>
			<li>주문1</li>
			<li>주문1</li>
		</div>
	</div><!-- content -->
=======
   <%@ include file="page.jsp" %>
   <div id="content">
      <h3>접수된 주문</h3>
      <div id="income"></div>
      <h3>주문확정</h3>
      <div id="confirm"></div>
      <h3>완료</h3>
      <div id="complete"></div>
   </div><!-- content -->
>>>>>>> main
</div>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.1.min.js"></script>
<script type="text/javascript" src="/bitcafe/resources/js/admin.js"></script>
<<<<<<< HEAD
<script type="text/javascript" src="/bitcafe/resources/js/orderAlert.js"></script>
=======
<script type="text/javascript" src="/bitcafe/resources/js/orderLoad.js"></script>
<!--<script type="text/javascript" src="/bitcafe/resources/js/orderAlert.js"></script>-->
>>>>>>> main
</body>
</html>