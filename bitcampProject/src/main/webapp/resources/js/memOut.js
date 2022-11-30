$(document).ready(function(){
	$("#Btn").on("click", function(){
		if($("#pwd").val()==""){
			alert("비밀번호를 입력해주세요");
			$("#pwd").focus();
			return false
		}else{
			if(confirm('탈퇴 하시겠습니까?')){
				$.ajax({
					url : "/bitcafe/memberOut", //회원탈퇴를 진행 할 메소드
					type : "POST", 
					data : "id =" + $("#id").val(), //보낼 아이디
					success: function(){
						alert('탈퇴를 성공하였습니다.');
					}
				});			
			}
		}
	});
})
