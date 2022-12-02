var ssId = $("#hidden_Id").val();
var ssPwd = $("#pwd").val();
var checkPwd = '';

$(".inputpwd").keyup(function(){
	//alert("asdasd");
	$.ajax({
	
		url : "/bitcafe/checkPwd", //비번체크
		type : "POST", 
		data : {ssId:$("#hidden_Id").val(), ssPwd:$("#pwd").val()}, //보낼 데이터
		dataType : "json",
		success: function(data){
		//alert(JSON.stringify(data));
		checkPwd = data.pwd;
		
		}
	
	});

});
	
$("#Btn").on("click", function(){
	//alert(checkPwd);
	if(checkPwd == $("#pwd").val()){

	 $.ajax({
	 	type : 'post', 
	 	url : "/bitcafe/memberDelete", 
	 	data : "id=" + $("#hidden_Id").val(),
	 	success: function(data){
	 		alert("회원탈퇴가 완료되었습니다. 이용해주셔서 감사합니다!");
	 		location.href='/bitcafe';
	 	}
	
	});
	}else{
		alert("비밀번호가 일치하지 않습니다.");
	}
});
