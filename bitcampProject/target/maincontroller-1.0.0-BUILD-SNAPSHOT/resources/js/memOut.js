$(document).ready(function(){
		$("#deletee").on("click", function(){
			
			if($("#memberPw").val()==""){
				alert("비밀번호를 입력해주세요");
				$("#memberPw").focus();
				return false
			}
			
			if ($("#memberPw").val() != $("#memberPw2").val()) {
				alert("비밀번호가 일치하지 않습니다.");
				$("#memberPw").focus();
				 
				return false;
				}
			
			$.ajax({
				url : "/member/pwCheck",
				type : "POST",
				dataType : "json",
				data : $("#deleteForm").serializeArray(),
				success: function(data){
					
					if(data==0){
						alert("비밀번호를 확인해주세요.");
						return;
					}else{
						if(confirm("탈퇴하시겠습니까?")){
							$("#deleteForm").submit();
						}
						
					}
				}
			})
		});
})
