<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
<title>BitCafe</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="/bitcafe/resources/css/store/store.css"><!-- reset, bottomTab.css -->
<link rel="icon" href="/bitcafe/resources/img/order.png">
</head>
<body>
<<<<<<< HEAD
<div class="container" ><!-- container start -->
	<div class="row" id="storeList_head">
		<div class="col-2" id="storeList_head_goback"><img alt="goback" src="/bitcafe/resources/img/goback.png" id="goback_icon"></div>
		<div class="col-8"><div class="storeViewHead">매장 선택</div></div>
	</div>
	<div class="input-group mb-3" id="search_DIV">
  		<span class="input-group-text" id="inputGroup-sizing-default"><img alt="findicon" src="/bitcafe/resources/img/findicon.png" width="30px;" height="30px;"></span>
  		<input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" placeholder="검색">
  		<button class="btn btn-outline-secondary" type="button" id="button-addon2">Enter</button>
	</div>
	
	<hr id="store_List_hr1">
	
	<!-- 매장리스트 for_each -->
	<div id="storeList_all">
		<!-- <div class="row" id="store_List">
			<div class="col-4" align="center">
				<img src="" class="rounded float-start" alt="store1" id="store_thumb">
			</div> -->
			
			<!-- 매장리스트 -->
			
			<div class="col" id="store_info">
				<!-- <div id="store_name">매장이름123</div>
				<div id="store_addr">매장주소123 서울시123</div>
				 -->
				<div id="store_tel"><img src="/bitcafe/resources/img/phone1.jpg" alt="phone1" width="20px" height="20px" id="phone_img">02-123-1234</div>
			</div>
		</div>
	</div>
	
</div><!-- container end -->
=======
<div id="box_wrap">	
	<!-- container start -->
	<div class="container" >
		<header>
			
				<div class="row" id="storeList_head">
					<div class="col-2" id="storeList_head_goback" onclick="goback_store_info()"><img alt="goback" src="/bitcafe/resources/img/goback.png" id="goback_icon"></div>
					<div class="col-8"><div class="storeViewHead">매장 선택</div></div>
				</div>
				<div class="input-group mb-3" id="search_DIV">
			  		<span class="input-group-text" id="inputGroup-sizing-default"><img alt="findicon" src="/bitcafe/resources/img/findicon.png" width="30px;" height="30px;"></span>
			  		<input type="text" class="form-control" name="keyword" id="storekeyword" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" placeholder="검색">
			  		<button class="btn btn-outline-secondary" type="button" id="button-addon2">Enter</button>
				</div>
			
		</header>	
		<hr id="store_List_hr1">
		
			<div style="overflow-y: scroll; overflow-x:hidden; " id="scroll_list" class="scroll_list1">
				<div id="storeList_all">
				<!-- ajax -->
				</div>
			</div>
		
	</div>
	<!-- container end -->
</div>
>>>>>>> fd1ef69e7ed981636a0b9c7342ee18dce5da3412

	<%@ include file="bottomTab.jsp" %><!-- bottomTab.jsp -->
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.1.min.js"></script>
<script type="text/javascript" src="/bitcafe/resources/js/bottomTab.js"></script><!-- bottomTab.js -->
<script type="text/javascript" src="/bitcafe/resources/js/storeList.js"></script>
<<<<<<< HEAD
=======
<script type="text/javascript">
//엔터키로 검색하기 13번키 => 엔터키
document.getElementById("storekeyword").addEventListener("keyup", function(e) {
    if (e.keyCode === 13) {
        document.getElementById("button-addon2").click();
    }
});
</script>
>>>>>>> fd1ef69e7ed981636a0b9c7342ee18dce5da3412
</body>
</html>
