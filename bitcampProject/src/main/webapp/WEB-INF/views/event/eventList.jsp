<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
<title>BitCafe</title>
<link rel="stylesheet" type="text/css" href="/bitcafe/resources/css/topImg.css"><!-- topImg.css //background-imge -->
<link rel="stylesheet" type="text/css" href="/bitcafe/resources/css/bottomTab.css"><!-- reset, bottomTab.css -->
<link rel="icon" href="/bitcafe/resources/img/order.png">

<style type="text/css">
tr td{
size: 10px:
}

</style>
</head>
<body>

<!-- container start -->
<div class="container" >
	<div class="top-img">
	
	
		<div class="top-name">리스트</div>
	</div>
		<table id="eventListTable" border="1" cellpadding="5" frame="hsides" rules="rows">
		<tr>
			<th style="width: 100px">글번호</th>
			<th style="width: 100px">제목</th>
			<th style="width: 100px">내용</th>
			<th style="width: 100px">글작성 시간</th>
			<th style="width: 200px">이미지</th>
		</tr>
		
		<!-- 동적처리 -->
		
	</table>

	
</div><!-- container end -->

<%@ include file="../bottomTab.jsp" %><!-- bottomTab.jsp -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.1.min.js"></script>
<script type="text/javascript" src="/bitcafe/resources/js/bottomTab.js"></script><!-- bottomTab.js -->
<script type="text/javascript">
$(document).ready(function() {
	$.ajax({
		type: 'get',
		url: '/bitcafe/event/getEventList',
		dataType: 'json',
		success: function(data){
			
			$.each(data.list, function(index, items){
			 console.log(index, items.seq, items.subject, items.content, items.logtime,items.eventimagepath);
			
			$('<tr/>').append($('<td/>',{ 
				align:'center',
				text: items.seq
			
			})).append($('<td/>',{
				align:'center',
				text: items.subject
			
			}).append($('<td/>',{
				align:'center',
				text: items.content
			    }))
			).append($('<td/>',{
				align:'center',
				text: items.logtime
			})).append($('<td/>',{
				align:'center',
				text: items.eventimagepath
			})).appendTo($('#eventListTable')); 
			
			}); //$each
			
			//로그인 여부
			$('.subjectA').click(function(){
				if($('#memId').val()=='') alert('먼저 로그인하세요.');
				else{
				// alert ($(this).parent().prev().prop('tagName')) //this 자기자신을 나타낸다 , prev 앞 형제 
				//alert ($(this).parent().prev().text());//글번호 찍자. //DOM
				
				var seq = $(this).parent().prev().text();
				location.href='/miniProject_MVC/board/boardViewCheck.do?seq='+seq+"&pg="+$('#pg').val();
				}
			});
			
		},
		error: function(err){
			console.log(err);
		}
		
	});// $.ajax({});

}); // $(document).ready(function(){});
</script>
</body>
</html>