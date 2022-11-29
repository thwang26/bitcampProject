$(function(){
	$.ajax({
		type: 'get',
		url: '/bitcafe/menuDetails',
		data: 'seqMenu=' + $('#seqMenu').val(),
		dataType: 'json',
		success: function(data){
			$('#menuName').val(data.menuName);
			$('#menuContent').val(data.menuContent);
			$('#menuPrice').val(data.menuPrice);
			$('#orderPrice').val(data.menuPrice);
			$('.card > img').attr("src", data.menuImagePath); 
		},
		error: function(err){
			console.log(err);
		}
	});
});

$(function(){
	$('div.btn-group > input[name="sizeOpt"]').click(function(){
		$(this).attr('checked', true); 
		$('div.btn-group > input[name="sizeOpt"]').not(this).attr('checked', false);
		
		if($('#sizeOpt2:checked')) {
			var menuPrice = $('#menuPrice').val();
			menuPrice = parseInt(menuPrice) + 500; 
			$('#menuPrice').prop('value', menuPrice);
			
		} else if($('#sizeOpt3:checked')) {
			var menuPrice = $('#menuPrice').val();
			menuPrice = parseInt(menuPrice) + 1000; 
			$('#menuPrice').prop('value', menuPrice);
			
		} else if($('#sizeOpt1:checked')) {
			var menuPrice = $('#menuPrice').val();
			menuPrice = parseInt(menuPrice); 
			$('#menuPrice').prop('value', menuPrice);	
		} 
	});
});

$(function(){
	$('div.btn-group > input[name="takeoutOpt"]').click(function(){
		$(this).attr('checked', true); 
		$('div.btn-group > input[name="takeoutOpt"]').not(this).attr('checked', false);
		
		if($('#takeoutOpt2:checked')) {
			var menuPrice = $('#menuPrice').val();
			menuPrice = parseInt(menuPrice) - 500; 
			$('#menuPrice').prop('value', menuPrice);
		} 
	});
});

$('#plusShotBtn').click(function(){
	var shotNum = $('#shotOpt').val();
	var plusNum = parseInt(shotNum) + 1;
	var menuPrice = $('#menuPrice').val();
	
	$('#shotOpt').attr('value', plusNum);
	
	menuPrice = parseInt(menuPrice) + 500; 
	
	$('#menuPrice').prop('value', menuPrice);
	$('#orderPrice').attr('value', menuPrice);
});

$('#minusShotBtn').on("click", function(){
	var shotNum = $('#shotOpt').val();
	var minusNum = parseInt(shotNum) - 1;
	var menuPrice = $('#menuPrice').val();
	
	if(minusNum < 0) minusNum =  0;
	
	$('#shotOpt').attr('value', minusNum);
	
	if(shotNum > 0) 
		menuPrice = parseInt(menuPrice) - 500; 
	
	$('#menuPrice').prop('value', menuPrice);
	$('#orderPrice').attr('value', menuPrice);
});


$('#plusQtyBtn').on("click", function(){
	var qtyNum = $('#qty').val();
	var plusNum = parseInt(qtyNum) + 1;
	var menuPrice = $('#menuPrice').val();
	
	$('#qty').attr('value', plusNum);
	
	menuPrice = parseInt(menuPrice) * plusNum; 
	
	$('#menuPrice').attr('value', menuPrice);
	$('#orderPrice').attr('value', menuPrice);
});

$('#minusQtyBtn').on("click", function(){
	var qtyNum = $('#qty').val();
	var minusNum = parseInt(qtyNum) - 1;
	var menuPrice = $('#menuPrice').val();
	
	if(minusNum < 1) minusNum =  1;
	
	$('#qty').attr('value', minusNum);
	
	if(qtyNum > 1)
		menuPrice = parseInt(menuPrice) * minusNum;
	
	$('#menuPrice').attr('value', menuPrice);
	$('#orderPrice').attr('value', menuPrice);
});

 
$('#orderBtn').click(function(){
	$.ajax({
		type: 'post',
		url: '/bitcafe/orderMenu',
		data: $('#menuDetailsForm').serialize(),
		success: function(){
			location.href='/bitcafe/orderMenuForm'; 
		},
		error: function(err){
			console.log(err);
		}
	});
});









