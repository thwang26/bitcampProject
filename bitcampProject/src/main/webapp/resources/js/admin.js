$('#logout').click(function(){
	if(confirm('로그아웃 하시겠습니까?')){
		location.href='/bitcafe?num=1';
	}
});
$('.ok').click(function(){
	console.log($(this).parent().text());
	alert($(this).parent().text()+ '주문을 접수하였습니다.');
});
$('.no').click(function(){
	confirm('주문을 취소하시겠습니까?');
});
$('.end').click(function(){
	confirm('준비를 완료하시겠습니까?');
});
$('.order').click(function(){
	$.ajax({
		url: '/bitcafe/getOrder',
		dataType: 'json',
		success: function(data){
			alert("확인합니다.");
		},
		error: function(err){
			console.log(err);
		}
	});
});