$(function(){
	$.ajax({
		type: 'get',
		url: '/bitcafe/getOrderMenu',
		data: {
				'orderGroup': $('#orderGroup').val()
			  },
		dataType: 'json',
		success: function(data){
			var totalPrice= 0;
			$.each(data, function(index, items) {
				$('<div/>', { class: "order-list-row"})
					.append($('<div/>', { class: "cart-list-row-info"})
						.append($('<input/>', {type:"hidden", id:"seqOrder"}).val(items.seqOrder))
						.append($('<input/>', {type:"hidden", id:"storeNum"}).val(items.storeNum))
						.append($('<input/>', {type:"hidden", id:"orderGroup"}).val(items.orderGroup))
						.append($('<div/>', { id: "menuName" }).text(items.menuName))
						.append($('<div/>', { class: "menu-options-price"})
							.append($('<div/>', { class: "menu-option" }).css("display", "inline-block")
								.append($('<div/>', { id: "takeoutOpt", class: "takeoutOpt_"+index}).css("display", "inline-block").text(items.takeoutOpt))
								.append($('<div/>', { id: "sizeOpt", class: "sizeOpt_"+index}).css("display", "inline-block").text(items.sizeOpt))
								.append($('<div/>', { id: "shotOpt", class: "shotOpt_"+index}).css("display", "inline-block").text(items.shotOpt)))
							.append($('<div/>', { id: "orderPrice", class: "orderPrice"}).css("display", "inline-block").text(items.orderPrice))))
					.append($('<hr/>').css('margin-top', '16px'))
					.appendTo($('#order-list'))	
					
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
				
				$('#storeName').text("* 선택하신 매장 " + items.storeName);
				
				totalPrice += parseInt(items.orderPrice); 
					
			}); //each
			
			$('#totalPrice').attr('value', totalPrice).text(totalPrice);
			
		},
		error: function(err){
			console.log(err);
		}
	});
});

$(document).on('click', '.orderMenuBtn', function(){
	$.ajax({
		type: 'post',
		url: '/bitcafe/pay',
		data: {
			'orderGroup' : $('#orderGroup').val()
		},
		success: function(data){
			console.log(JSON.stringify(data));
			location.href = data.next_redirect_pc_url;	
		},
		error: function(err){
			console.log(err);
		}
	});		
});
	
