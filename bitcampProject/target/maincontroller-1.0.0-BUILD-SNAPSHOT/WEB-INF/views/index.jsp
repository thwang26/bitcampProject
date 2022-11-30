<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
<title>BitCafe</title>

<link rel="stylesheet" type="text/css" href="/bitcafe/resources/css/topImg.css"><!-- topImg.css //background-imge -->
<link rel="stylesheet" type="text/css" href="/bitcafe/resources/css/scroll.css"> <!-- scroll.css -->
<link rel="stylesheet" type="text/css" href="/bitcafe/resources/css/bottomTab.css"><!-- reset, bottomTab.css -->
<link rel="icon" href="/bitcafe/resources/img/order.png">
</head>
<body>

<!-- container start -->
<div class="container" >
	<!-- <div id="topImg" style="width:100%; height:370px;">img</div>  여기 있는건 topImg.css로 옮겼음-->
	<div class="top-img">
		<div class="top-name">
		${name }님 안녕하세요<br>
		환영합니다.
	<!-- <img src="/bitcafe/resources/img/maintop.jpg" align="top" style="width:100%;" /> --> <!-- 기존 width:300px; align="middle"뺏음 -->
	</div>
	</div>
	<!--menu start -->
	<div id="recommend">
	추천메뉴<br>
	
	베스트메뉴
	</div>
	<!-- menu end -->
	
	<!--event / scroll start -->
	<div id="event">
<!-- <div class="contents"> -->
		<div class="banner">
			<ul>
				<li><img src="/bitcafe/resources/img/event01.jpg" ></li><!-- width="340" height="210px" -->
				<li><img src="/bitcafe/resources/img/event02.jpg" ></li>
				<li><img src="/bitcafe/resources/img/event03.jpg"></li>
			</ul>
		</div>
	<!-- </div> -->
	</div>
	<!-- -event / scroll end -->
	
	</div><!-- container end -->

<%@ include file="bottomTab.jsp" %><!-- bottomTab.jsp -->
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.1.min.js"></script>
<script type="text/javascript" src="/bitcafe/resources/js/scroll.js"></script><!-- scroll.js -->
<script type="text/javascript" src="/bitcafe/resources/js/bottomTab.js"></script><!-- bottomTab.js -->
</body>
</html>