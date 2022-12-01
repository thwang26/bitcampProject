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
				$('#selectStore').append($('<option/>',{value: items.storeNum}).text(items.storeName))
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
			//alert(JSON.stringify(data));
			$.each(data, function(index, items) {
				$('<div/>', { class: "cart-list-row"})
					.append($('<div/>', { class: "cart-list-row-top"})
						.append($('<input/>', {type:"checkbox", class: "cart-list-checkbox"}).val(items.seqOrder))
						.append('<button type="button" id="deleteListBtn">X</button>'))
					.append($('<div/>', { class: "cart-list-row-info"})
						.append($('<input/>', {type:"hidden", id:"seqOrder"}).val(items.seqOrder))
						.append($('<input/>', {type:"hidden", id:"storeNum"}).val(items.storeNum))
						.append($('<input/>', {type:"hidden", id:"orderGroup"}).val(items.orderGroup))
						.append($('<div/>', { id: "menuName" }).text(items.menuName))
						.append($('<div/>', { class: "menu-options-price"})
							.append($('<div/>', { class: "menu-option" }).css("display", "inline-block")
								//.append($('<div/>', { id: "takeoutOpt", class: "takeoutOpt", value: items.takeoutOpt}).css("display", "inline-block"))
								.append($('<div/>', { id: "takeoutOpt", class: "takeoutOpt_"+index}).css("display", "inline-block").text(items.takeoutOpt))
								.append($('<div/>', { id: "sizeOpt", class: "sizeOpt_"+index}).css("display", "inline-block").text(items.sizeOpt))
								.append($('<div/>', { id: "shotOpt", class: "shotOpt_"+index}).css("display", "inline-block").text(items.shotOpt)))
							.append($('<div/>', { id: "orderPrice", class: "orderPrice"}).css("display", "inline-block").text(items.orderPrice))))
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

$(document).on('change', '#selectStore', function(){
	var storeNum =  $(this).val(); 
	
	if(storeNum == 'none') location.reload();
	$('#cart-list .cart-list-row').remove();
	
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
				$('<div/>', { class: "cart-list-row"})
					.append($('<div/>', { class: "cart-list-row-top"})
						.append($('<input/>', {type:"checkbox", class: "cart-list-checkbox"}).val(items.seqOrder))
						.append('<button type="button" id="deleteListBtn">X</button>'))
					.append($('<div/>', { class: "cart-list-row-info"})
						.append($('<input/>', {type:"hidden", id:"seqOrder"}).val(items.seqOrder))
						.append($('<input/>', {type:"hidden", id:"storeNum"}).val(items.storeNum))
						.append($('<input/>', {type:"hidden", id:"orderGroup"}).val(items.orderGroup))
						.append($('<div/>', { id: "menuName" }).text(items.menuName))
						.append($('<div/>', { class: "menu-options-price"})
							.append($('<div/>', { class: "menu-option" }).css("display", "inline-block")
								//.append($('<div/>', { id: "takeoutOpt", class: "takeoutOpt", value: items.takeoutOpt}).css("display", "inline-block"))
								.append($('<div/>', { id: "takeoutOpt", class: "takeoutOpt_"+index}).css("display", "inline-block").text(items.takeoutOpt))
								.append($('<div/>', { id: "sizeOpt", class: "sizeOpt_"+index}).css("display", "inline-block").text(items.sizeOpt))
								.append($('<div/>', { id: "shotOpt", class: "shotOpt_"+index}).css("display", "inline-block").text(items.shotOpt)))
							.append($('<div/>', { id: "orderPrice", class: "orderPrice"}).css("display", "inline-block").text(items.orderPrice))))
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



