$(function() {
	setInterval( function () {
	    $.ajax ({
	    	type: 'get',
	        url: '/bitcafe/orderAlert',
	        dataType: 'text',
	        success : function(data){
	        	if(data == 'alert'){
	        		alert('주문이 접수되었습니다.');
	        		location.href='/bitcafe/orderMenuList?num=1';
	        		return;
	        	}
	        },
	    });
	    }, 5000);
});