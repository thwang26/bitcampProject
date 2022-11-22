$(function(){
	$.ajax({
		type: 'get',
		url: '/bitcafe/menuDetails',
		data: 'seq=' + $('#seq').val(),
		dataType: 'json',
		success: function(data){
			$('#menuName').val(data.menuName);
			$('#menuContent').val(data.menuContent);
			$('#menuPrice').val(data.menuPrice);
			$('.card > img').attr("src", data.menuImagePath); 
		},
		error: function(err){
			console.log(err);
		}
	});
});

$(function(){
	$('div.btn-group > input[name="sizeOpt"]').click(function(){
		$(this).prop('checked', true); 
	});
});
