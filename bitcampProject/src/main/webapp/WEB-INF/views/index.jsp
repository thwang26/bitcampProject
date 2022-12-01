<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
<title>BitCafe</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="/bitcafe/resources/css/topImg.css"><!-- topImg.css //background-imge -->
<link rel="stylesheet" type="text/css" href="/bitcafe/resources/css/best_And_event.css"><!-- best_And_event.css -->
<link rel="stylesheet" type="text/css" href="/bitcafe/resources/css/bottomTab.css"><!-- reset, bottomTab.css -->
<link rel="icon" href="/bitcafe/resources/img/order.png">
</head>
<body>

<!-- container start -->
<div class="container" >
	<div class="top-img">
	
	<!-- login -->
		<div class="top-name">
		<c:if test="${sessionScope.name == null }">
		BitCafe 오신걸<br>
		환영합니다.<br>
		<input type="button" value="로그인하기" onclick="로그인창으로..">
		</c:if>
		<c:if test="${name !=null }">
		<a href="아이디 누르면 회원정보수정하는 곳으로..">${name}</a>
		&nbsp;님 안녕하세요.<br>
		환영합니다.
		
		<!-- <input type="button" value="로그아웃" id="">	 -->		
	</c:if>

	</div>
	</div>
	<!--menu start -->
<div id="recommend">
<br>
<h3 id="Recommend-Best-name">Recommend & Best Menu</h3>
<!-- best_And_event .css -->
<div id="bestMenu01" class="scroll-image">
 <!--  <img alt="" src="/bitcafe/resources/img/eventImg/프라푸치노_말차크림.jpg" />
  <img alt="" src="/bitcafe/resources/img/eventImg/프라푸치노_초콜릿크림칩.jpg" />
  <img alt="" src="/bitcafe/resources/img/eventImg/프라푸치노_카라멜.jpg" />
  </div>
 <div id="bestMenu02" class="scroll-image">
  <img alt="" src="/bitcafe/resources/img/eventImg/에스프레소_아이스아메리카노.jpg" />
  <img alt="" src="/bitcafe/resources/img/eventImg/에스프레소_아메리카노.jpg"/>
  <img alt="" src="/bitcafe/resources/img/eventImg/아포가토_초콜릿.jpg" /> -->
</div>
	</div>
<!--recommendList -->
	<!-- menu end -->
	
	<!--event start -->
<div id="event">
	<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="true">
  <div id="eventGO" align="left">진행 이벤트</div>
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
     <a href="/bitcafe/eventList?seqEvent=1"> <img src="/bitcafe/resources/img/eventImg/eventImg001.png"  value="1"class="d-block w-100" alt="..."></a><!-- 링크 공지 or 이벤트 1-->
    </div>
    <div class="carousel-item">
      <a href="/bitcafe/eventList?seqEvent=2"> <img src="/bitcafe/resources/img/eventImg/eventImg002.png" value="2" class="d-block w-100" alt="..."></a><!-- 링크 공지 or 이벤트 2-->
    </div>
    <div class="carousel-item">
       <a href="/bitcafe/eventList?seqEvent=3"><img src="/bitcafe/resources/img/eventImg/eventImg003.png" value="3" class="d-block w-100" alt="..."></a><!-- 링크 공지 or 이벤트 3-->
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
 </div>
</div>
	<!-- event end-->	
	<!-- best_And_event .css -->
</div><!-- container end -->
<%@ include file="bottomTab.jsp" %><!-- bottomTab.jsp -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.1.min.js"></script>
<script type="text/javascript" src="/bitcafe/resources/js/bestMenu.js"></script>
<script type="text/javascript" src="/bitcafe/resources/js/bottomTab.js"></script><!-- bottomTab.js -->
</body>
</html>