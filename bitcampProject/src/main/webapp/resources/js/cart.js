//주문할 매장 불러오기
$(document).ready(function(){
	$.ajax({
		type: 'get',
		url: '/bitcafe/getUserStore',
		data: {
			'id' : $('#id').val()
		},
		dataType: 'json',
		success: function(data){
			$.each(data, function(index, items) {
				$('#store_toggle').append($('<option/>',{value: items.storeNum}).text(items.storeName))
			});
		},
		error : function(err){
			console.log(err);
		}
	});
});

//user의 전체 주문목록
$(function(){
	$.ajax({
		type: 'get',
		url: '/bitcafe/getCartList',
		data: {
			'id' : $('#id').val()
		},
		dataType: 'json',
		success: function(data){
			alert(JSON.stringify(data));
			$.each(data, function(index, items) {
				$('<div/>', {class: "cartList_start", id:"cart_index_one"})
				.append($('<div/>', {class:"row", id:"cartList_head"})
					.append($('<div/>', {class:"col-5", id:"checked_one_cart"})
					.append($('<input/>', {type:"checkbox", class: "form-check-input", id:"check_one_cart"}).val(items.seqOrder)))
					.append($('<div/>', { class: "col-7", id:"delete_cart_one"})
					.append('<button type="button" id="deleteListBtn">X</button>')))


					.append($('<input/>', {type:"hidden", id:"seqOrder"}).val(items.seqOrder))
					.append($('<input/>', {type:"hidden", id:"storeNum"}).val(items.storeNum))
					.append($('<input/>', {type:"hidden", id:"orderGroup"}).val(items.orderGroup))
					.append($('<div/>', {id:"menuName_div"})
					.append($('<div/>', { id: "menuName" }).text(items.menuName)))


					.append($('<div/>', {class:"row", id:"row_option_price"})
						.append($('<div/>', {class:"col-2", id:"takeoutOpt_col"})
							.append($('<div/>', { id: "takeoutOpt", class: "takeoutOpt_"+index}).text(items.takeoutOpt)))
						.append($('<div/>', {class:"col-2", id:"sizeOpt_col"})
							.append($('<div/>', { id: "sizeOpt", class: "sizeOpt_"+index}).text(items.sizeOpt)))
						.append($('<div/>', {class:"col-2", id:"shotOpt_col"})
							.append($('<div/>', { id: "shotOpt", class: "shotOpt_"+index}).text(items.shotOpt)))

						.append($('<div/>', {class:"col-6", id:"orderPrice_col"})
							.append($('<div/>', { id: "orderPrice", class: "orderPrice"}).text(items.orderPrice+"원")))
						
						)
					

						
						

						
					.append($('<hr/>').css('margin-top', '16px'))
					.appendTo($('#cart-list'))	
					


					var sizeOpt = items.sizeOpt;		
					var takeoutOpt = items.takeoutOpt;
					var shotOpt = items.shotOpt;
					
					if(sizeOpt == '0') $('.sizeOpt_'+index).text('Small');
					else if(sizeOpt == '1') $('.sizeOpt_'+index).text('Regular');
					else if(sizeOpt == '2') $('.sizeOpt_'+index).text('Large');
					
					if(takeoutOpt == '0') $('.takeoutOpt_'+index).text('매장컵');
					else if(takeoutOpt == '1') $('.takeoutOpt_'+index).text('개인컵');
					else if(takeoutOpt == '2') $('.takeoutOpt_'+index).text('일회용컵'); 
					
					if(shotOpt == '0') $('.shotOpt_'+index).hide();
					else $('.shotOpt_'+index).text(shotOpt + "샷 추가");
									
			}); //each
			
			$('#orderListBtn').attr('disabled', 'disabled');
			
		},
		error: function(err){
			console.log(err);
		}
	});
});

$(document).on('change', '#store_toggle', function(){
	var storeNum =  $(this).val(); 
	
	if(storeNum == 'none') location.reload();
	$('.cartList_start').remove();
	
	$.ajax({
		type: 'get',
		url: '/bitcafe/getSelectCartList',
		data: {
			'id' : $('#id').val(),
			'storeNum' : storeNum
		},
		dataType: 'json',
		success: function(data){
			$.each(data, function(index, items) {
				$('<div/>', {class: "cartList_start", id:"cart_index_one"})
				.append($('<div/>', {class:"row", id:"cartList_head"})
					.append($('<div/>', {class:"col-5", id:"checked_one_cart"})
					.append($('<input/>', {type:"checkbox", class: "form-check-input", id:"check_one_cart"}).val(items.seqOrder)))
					.append($('<div/>', { class: "col-7", id:"delete_cart_one"})
					.append('<button type="button" id="deleteListBtn">X</button>')))


					.append($('<input/>', {type:"hidden", id:"seqOrder"}).val(items.seqOrder))
					.append($('<input/>', {type:"hidden", id:"storeNum"}).val(items.storeNum))
					.append($('<input/>', {type:"hidden", id:"orderGroup"}).val(items.orderGroup))
					.append($('<div/>', {id:"menuName_div"})
					.append($('<div/>', { id: "menuName" }).text(items.menuName)))


					.append($('<div/>', {class:"row", id:"row_option_price"})
						.append($('<div/>', {class:"col-2", id:"takeoutOpt_col"})
							.append($('<div/>', { id: "takeoutOpt", class: "takeoutOpt_"+index}).text(items.takeoutOpt)))
						.append($('<div/>', {class:"col-2", id:"sizeOpt_col"})
							.append($('<div/>', { id: "sizeOpt", class: "sizeOpt_"+index}).text(items.sizeOpt)))
						.append($('<div/>', {class:"col-2", id:"shotOpt_col"})
							.append($('<div/>', { id: "shotOpt", class: "shotOpt_"+index}).text(items.shotOpt)))

						.append($('<div/>', {class:"col-6", id:"orderPrice_col"})
							.append($('<div/>', { id: "orderPrice", class: "orderPrice"}).text(items.orderPrice+"원")))
						
						)
					

						
						

						
					.append($('<hr/>').css('margin-top', '16px'))
					.appendTo($('#cart-list'))	
					


					var sizeOpt = items.sizeOpt;		
					var takeoutOpt = items.takeoutOpt;
					var shotOpt = items.shotOpt;
					
					if(sizeOpt == '0') $('.sizeOpt_'+index).text('Small');
					else if(sizeOpt == '1') $('.sizeOpt_'+index).text('Regular');
					else if(sizeOpt == '2') $('.sizeOpt_'+index).text('Large');
					
					if(takeoutOpt == '0') $('.takeoutOpt_'+index).text('매장컵');
					else if(takeoutOpt == '1') $('.takeoutOpt_'+index).text('개인컵');
					else if(takeoutOpt == '2') $('.takeoutOpt_'+index).text('일회용컵'); 
					
					if(shotOpt == '0') $('.shotOpt_'+index).hide();
					else $('.shotOpt_'+index).text(shotOpt + "샷 추가");
									
			}); //each
			
			$('#orderListBtn').removeAttr('disabled');
		},
		error: function(err){
			console.log(err);
		}
	});
	
});

//체크박스 클릭하면 cheched 속성 부여
$(document).on('click','.cart-list-checkbox', function(){
	//alert($(this).is(':checked'));
	$(this).attr('checked', $(this).is(':checked'));	
});

//주문하기 버튼 클릭했을 때 
$('#orderListBtn').click(function(){
	var checkedArr = [];
	$('.cart-list-checkbox:checked').each(function(i){
		checkedArr.push($(this).val());
	});
		
	var orderGroup = Math.min.apply(null, checkedArr);
	var storeNum = $('#storeNum').val();
	alert('orderGroup = ' + orderGroup + 'storeNum = ' + storeNum);
	var objParams = {
		'id' : $('#id').val(),
		'storeNum' : storeNum,
		'orderGroup' : orderGroup,
		'checkedArr' : checkedArr
	};
	
	$.ajax({
		type: 'post',
		url: '/bitcafe/orderList',
		data: objParams,
		success: function(){
			location.href='/bitcafe/orderMenuForm?orderGroup='+orderGroup; 
		},
		error: function(err){
			console.log(err);
		}
	});
	
});



