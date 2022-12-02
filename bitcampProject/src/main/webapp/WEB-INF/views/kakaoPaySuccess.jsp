<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<input type="hidden" id="orderGroup" value="${approveResponse.partner_order_id }">
결제가 완료되었습니다.
상품 이름 : ${approveResponse.item_name }
상품수량 : ${approveResponse.quantity } 
금액 : ${approveResponse.amount.total }

<input type="button" id="paymentCompleteBtn" value="결제 확인">

<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.1.min.js"></script>
<script type="text/javascript">
$('#paymentCompleteBtn').click(function(){
	$.ajax({
		type: 'get',
		url: '/bitcafe/paymentComplete',
		data: {
			'orderGroup' : $('#orderGroup').val()
		},
		success: function(){
			location.href = '/bitcafe/';
		},
		error : function(err){
			console.log(err);
		}
	});
});
</script>
</body>
</html>