$(function(){
	$.ajax({
		type: 'get',
		url: '/bitcafe/cartList',
		data: {
			'id' : $('#id').val(),
			'storeNum' : $('#storeNum').val()
		},
		dataType: 'json',
		success: function(data){
			$.each(data, function(index, items) {
				
			}); 
		},
		error: function(err){
			console.log(err);
		}
	});
});