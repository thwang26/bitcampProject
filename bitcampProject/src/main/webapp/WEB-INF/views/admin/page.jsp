<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div id="header">
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
			<li id="orderList"><a href="/bitcafe/orderList">주문내역</a></li>
			<li><a href="/bitcafe/orderCount">매출확인</a></li>
			<li><a href="/bitcafe/menuInsert">메뉴추가</a></li>
			<li><a href="/bitcafe/menuDelete">메뉴삭제</a></li>
		</ul>
	</div><!-- nav -->
</div><!-- container -->