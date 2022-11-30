$('#loginBtn').click(function(){
	$('#idDiv').empty();
	$('#pwdDiv').empty();
	
	if($('#id').val() == ''){
		$('#idDiv').text('아이디를 입력해주세요');
		$('#idDiv').css('color', 'red');
		$('#id').focus();
		
	}else if($('#pwd').val() == ''){
		$('#pwdDiv').text('비밀번호를 입력해주세요');
		$('#pwdDiv').css('color', 'red');
		$('#pwd').focus();
	
	}else{
		$.ajax({
			type: 'post',
			url: '/bitcafe/memberlogin',
			data: $('#loginForm').serialize(),
			success: function(data){
				console.log(data);
				if(data == 'non_exist'){
					$('#idDiv').text('회원정보를 찾을수없습니다'); 
					$('#idDiv').css('color', 'red');
				}else if(data == 'non_existpwd'){
					$('#pwdDiv').text('비밀번호를 확인해주세요'); 
					$('#pwdDiv').css('color', 'red');			
				}else if(data == 'exist'){
					$('#pwdDiv').text('로그인 성공했습니다.');
					$('#pwdDiv').css('color', 'blue');
					alert("로그인 성공했습니다.'");	
					
					location.href='/bitcafe/index';	
								
				}
			},
			error: function(err){
        		 console.log(err);
        	 }
		});
	}
});