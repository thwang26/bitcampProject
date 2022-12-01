$(function () {
    $.ajax({
        type: 'get',
        url: '/bitcafe/orderLoad',
        dataType: 'json',
        success: function (data) {
        	//alert(JSON.stringify(data));
            $.each(data, function (index, items) {
            	if(items.orderCode == 2){
	                $('<li/>', { class: "row nnn", id: "income"})
	                .append($('<input/>', { type: 'text', value: items.seqOrder}))
	                .append($('<div/>', { id: 'menuName'}).text(items.menuName + " ")
	                	.append($('<input/>', { type: "button", value: "주문확인", class: "btn btn-success orderConfirmBtn", id: "orderConfirmBtn"}).css('width', '100px'))
	                	.append($('<input/>', { type: "button", value: "취소", class: "btn btn-danger orderRejectBtn", id: "ordeRejectBtn"}).css('width', '100px')))
	                .append($('<hr/>').css('margin-top', '16px'))
	                .appendTo($('#income'))
            	}else if(items.orderCode == 3){
	                $('<li/>', { class: "row nnn", id: "confirm"})
	                .append($('<input/>', { type: 'text', value: items.seqOrder}))
                	.append($('<div/>', { id: 'menuName'}).text(items.menuName + " ")
                		.append($('<input/>', { type: "button", value: "완료", class: "btn btn-success orderCompleteBtn", id: "orderConfirmBtn"}).css('width', '100px')))
	                .append($('<hr/>').css('margin-top', '16px'))
	                .appendTo($('#confirm'))
            	}else{
	                $('<li/>', { class: "row nnn", id: "complete"})
	                .append($('<input/>', { type: 'text', value: items.seqOrder}))
	                	.append($('<div/>', { id: 'menuName'}).text(items.menuName + " "))
	                .append($('<hr/>').css('margin-top', '16px'))
	                .appendTo($('#complete'))
            	}
            });
        },
        error: function (err) {
            console.log(err);
            
        }
    });

});//orderLoad

$(document).on('click', '.orderConfirmBtn', function(){
	if(confirm('메뉴를 접수하시겠습니까?')){
		$.ajax({
	        type: 'get',
	        url: '/bitcafe/orderConfirm',
	        data: 'seqOrder='+$(this).parent().prev().val(),
	        success: function () {
	        	alert('접수되었습니다');
	        	location.reload();
	        },
	        error: function (err) {
	        	console.log(err)
	        }
	    });
	}
});//orderConfirm

$(document).on('click', '.orderCompleteBtn', function(){
	alert($(this).parent().prev().val());
	if(confirm('완료 하시겠습니까?')){
		$.ajax({
	        type: 'get',
	        url: '/bitcafe/orderComplete',
	        data: 'seqOrder='+$(this).parent().prev().val(),
	        success: function () {
	        	alert('완료되었습니다');
	        	location.reload();
	        },
	        error: function (err) {
	        	console.log(err)
	        }
	    });
	}
});//orderComplete

$(document).on('click', '.orderRejectBtn', function(){
	alert($(this).parent().prev().val());
	if(confirm('취소 하시겠습니까?')){
		$.ajax({
	        type: 'get',
	        url: '/bitcafe/orderReject',
	        data: 'seqOrder='+$(this).parent().prev().val(),
	        success: function () {
	        	alert('취소되었습니다.');
	        	location.reload();
	        },
	        error: function (err) {
	        	console.log(err)
	        }
	    });
	}
});//orderReject

