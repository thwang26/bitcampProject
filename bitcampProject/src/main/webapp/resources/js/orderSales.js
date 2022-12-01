$(function() {
    
    var orderArray = new Array();
    var orderObject = new Object();
    
    orderObject = new Object();
    orderObject.orderId = "1";
    orderObject.orderName = "연도별 조회";
    orderArray.push(orderObject);
    
    orderObject = new Object();
    orderObject.orderId = "2";
    orderObject.orderName = "월별 조회";
    orderArray.push(orderObject);
    
    orderObject = new Object();
    orderObject.orderId = "3";
    orderObject.orderName = "일별 조회";
    orderArray.push(orderObject);
    
    //메인 카테고리 셋팅
    var orderSelect = $("select[name='orderNum']");
    
    for(var i=0 ; i<orderArray.length ; i++){
        orderSelect.append("<option value='"+orderArray[i].orderId+"'>"+orderArray[i].orderName+"</option>");
    }
});

$(document).on("change","select[name='orderNum']",function(){
	//alert($(this).val());
	$('#content li').remove();
	if($(this).val() == 1){
	    $.ajax({
	        type: 'get',
	        url: '/bitcafe/orderSales',
	        data: 'selectNum=' + $(this).val(),
	        dataType: 'json',
	        success: function (data) {
	        	//alert(JSON.stringify(data));
	            $.each(data, function (index, items) {
	                $('<li/>', { class: "row nnn", id: "income"})
	                .append($('<div/>', { id: 'orderDate'}).text("주문년도 : "+items.orderDate+"년"))
	                .append($('<div/>', { id: 'storeName'}).text("주문매장 : "+items.storeName)
	                .append($('<div/>', { id: 'orderPrice'}).text("매출 : "+items.orderPrice+"₩")
	                .append($('<hr/>').css('margin-top', '16px'))))
	                .appendTo($('#content'))
	            });
	        },
	        error: function (err) {
	            console.log(err);
	        }
    	});
    }
	if($(this).val() == 2){
	    $.ajax({
	        type: 'get',
	        url: '/bitcafe/orderSales',
	        data: 'selectNum=' + $(this).val(),
	        dataType: 'json',
	        success: function (data) {
	        	//alert(JSON.stringify(data));
	            $.each(data, function (index, items) {
	                $('<li/>', { class: "row nnn", id: "income"})
	                .append($('<div/>', { id: 'orderDate'}).text("주문 달 : "+items.orderDate+"월"))
	                .append($('<div/>', { id: 'storeName'}).text("주문매장 : "+items.storeName)
	                .append($('<div/>', { id: 'orderPrice'}).text("매출 : "+items.orderPrice+"₩")
	                .append($('<hr/>').css('margin-top', '16px'))))
	                .appendTo($('#content'))
	            });
	        },
	        error: function (err) {
	            console.log(err);
	        }
    	});
    }
	if($(this).val() == 3){
	    $.ajax({
	        type: 'get',
	        url: '/bitcafe/orderSales',
	        data: 'selectNum=' + $(this).val(),
	        dataType: 'json',
	        success: function (data) {
	        	//alert(JSON.stringify(data));
	            $.each(data, function (index, items) {
	                $('<li/>', { class: "row nnn", id: "income"})
	                .append($('<div/>', { id: 'orderGroup'}).text("주문번호 : "+items.orderGroup))
	                .append($('<div/>', { id: 'orderDate'}).text("주문일자 : "+items.orderDate+"일")
	                .append($('<div/>', { id: 'menuName'}).text(items.menuName+"...")
	                .append($('<div/>', { id: 'storeName'}).text("주문매장 : "+items.storeName)
	                .append($('<div/>', { id: 'orderPrice'}).text("매출 : "+items.orderPrice+"₩")
	                .append($('<hr/>').css('margin-top', '16px'))))))
	                .appendTo($('#content'))
	            });
	        },
	        error: function (err) {
	            console.log(err);
	        }
    	});
    }
}); //orderSales