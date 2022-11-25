$(function(){
	$.ajax({
		type: 'get',
		url: '/bitcafe/getOrderMenu',
		data: {
				'id': $('#id').val(),
				'storeNum': $('#storeNum').val()
			  },
		dataType: 'json',
		success: function(data){
			console.log(data);
			$('#menuName').val(data.MENUNAME);
			$('#orderPrice').val(data.ORDERPRICE);
			$('#qty').val(data.QTY);
			$('#sizeOpt').val(data.SIZEOPT);
			$('#takeoutOpt').val(data.TAKEOUTOPT);
			$('#shotOpt').val(data.SHOTOPT);
			$('#storeName').val(data.STORENAME);
			$('#storeAddr').val(data.STOREADDR);
			
			var sizeOpt = $('#sizeOpt').val();
			var takeoutOpt = $('#takeoutOpt').val();
			
			if(sizeOpt == '0') $('#sizeOpt').prop('value','Small');
			else if(sizeOpt == '1') $('#sizeOpt').prop('value','Regular');
			else if(sizeOpt == '2') $('#sizeOpt').prop('value','Large');
			
			if(takeoutOpt == '0') $('#takeoutOpt').prop('value','매장컵');
			else if(takeoutOpt == '1') $('#takeoutOpt').prop('value','개인컵');
			else if(takeoutOpt == '2') $('#takeoutOpt').prop('value','일회용컵');
		},
		error: function(err){
			console.log(err);
		}
	});
});

$(function(){
	$('#orderMenuBtn').click(function(){
		$.ajax({
			url: '/bitcafe/kakaopay',
			dataTypes: 'json',
			success: function(data){
				alert(data);
			},
			error: function(err){
				console.log(err);
			}
		});
	});
});