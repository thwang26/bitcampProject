<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div id="header">
<<<<<<< HEAD
	<a href="/bitcafe/admin">
		<strong>BitCafe</strong>
	</a>
	<div id="admin">
		<div id="welcome">홍길동님 환영합니다!</div>
		<input type="button" value="로그아웃" id="logout"/>
	</div>
</div><!-- header -->

<div id="container">
	<div id="nav">
		<ul>
			<li class="menu" id="orderMenuList"><a href="/bitcafe/orderMenuList?num=1">주문내역</a></li>
			<li class="menu" id="orderCount"><a href="/bitcafe/orderCount?num=2">매출확인</a></li>
			<li class="menu" id="menuInsert"><a href="/bitcafe/menuInsert?num=3">메뉴추가</a></li>
			<li class="menu" id="menuDelete"><a href="/bitcafe/menuEdit?num=4">메뉴편집</a></li>
		</ul>
	</div><!-- nav -->
=======
   <a href="/bitcafe/orderMenuList?num=1">
      <strong>BitCafe</strong>
   </a>
   <div id="admin">
      <div id="welcome">관리자(${name })님 환영합니다!</div>
      <input type="button" value="로그아웃" id="logoutBtn"/>
   </div>
</div><!-- header -->

<div id="container">
   <div id="nav">
      <ul>
         <li class="menu" id="orderMenuList"><a href="/bitcafe/orderMenuList?num=1">주문내역</a></li>
         <li class="menu" id="orderCount"><a href="/bitcafe/orderCount?num=2">매출확인</a></li>
         <li class="menu" id="menuInsert"><a href="/bitcafe/menuInsert?num=3">메뉴추가</a></li>
         <li class="menu" id="menuDelete"><a href="/bitcafe/menuEdit?num=4">메뉴편집</a></li>
      </ul>
   </div><!-- nav -->
>>>>>>> main
</div><!-- container -->