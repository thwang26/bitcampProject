<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<<<<<<< HEAD
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/bitcafe/resources/css/bottomTab.css">

<style type="text/css">
#writeForm div {
	color: red;
	font-size: 8pt;
	font-weight: bold;
}
</style>

</head>
<body>
<h3><img src="../image/222.png" width="50" height="50" 
onclick="location.href='/chapter06_SpringWebMaven/'" style="cursor: pointer" /> 회원가입 </h3>
<hr/>

<form id="writeForm">
   <table border="1">
      <tr>
         <td width="80px" align="center">이름</td>
         <td>
            <input type="text" name="name" id="name" style="width: 100px">
            <div id="nameDiv"></div>
         </td>
      </tr>
      
      <tr>
         <td align="center">아이디</td>
         <td>
            <input type="text" name="id" id="id" style="width: 120px">
            <div id="idDiv"></div>
         </td>
      </tr>
      
      <tr>
         <td align="center">비밀번호</td>
         <td>
            <input type="password" name="pwd" id="pwd" style="width: 150px">
            <div id="pwdDiv"></div>
         </td>
      </tr>
      
      <tr>
         <td align="center">이메일</td>
         <td>
            <input type="text" name="email" id="email" style="width: 200px">
            <div id="idDiv"></div>
         </td>
      </tr>
      
      <tr>
         <td align="center">전화번호</td>
         <td>
         	<select name="tel1" id="tel" style="width: 30px">
         		<option>010</option>
         		<option>011</option>
         		<option>016</option>
         		<option>017</option>
         		<option>019</option>
         	</select>
            <input type="text" name="tel2" id="tel" style="width: 30px">
            <input type="text" name="tel3" id="tel" style="width: 30px">
            <div id="idDiv"></div>
         </td>
      </tr>
      
      <tr>
         <td colspan="2" align="center">
            <input type="button" value="회원가입" id="writeBtn">
            <input type="reset" value="초기화">
         </td>
      </tr>   
   </table>
</form>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.1.min.js"></script>
<script type="text/javascript" src="../js/write.js"></script>
=======
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
<title>BitCafe</title>

<link rel="stylesheet" type="text/css" href="/bitcafe/resources/css/bottomTab.css"><!-- reset, bottomTab.css -->
<link rel="icon" href="/bitcafe/resources/img/order.png">
<style type="text/css">

#nameDiv{
 font-size: 10px;
 color: red;
}
#idDiv{
 font-size: 10px;
 color: red;
}
#pwdDiv{
 font-size: 10px;
 color: red;
}
form{
margin-top: 50%;
}


</style>
</head>
<body>

<!-- container start -->
<div class="container" >
	<!-- <div id="topImg" style="width:100%; height:370px;">img</div>  여기 있는건 topImg.css로 옮겼음-->

	
	<form name="writeForm" id="writeForm" method="post" align="left" action="" style="cursor: pointer;">
	<h4 >회원가입</h4><br>
	<table border="1" cellpadding="5" cellspacing="0">
	
		<tr>
			<th class="memberwrite" style="margin: 0 auto; font-size: 15px;" align="center">이름</th>
			<td>
				<input type="text" id="name" name="name" maxlength="10" placeholder="이름 입력"/>
				<div id="nameDiv"></div>
			</td>
		</tr>
		
		<tr>
			<th style="margin: 0 auto; font-size: 15px;" align="center">아이디</th>
			<td>
				<input type="text" id="id" name="id" maxlength="15" placeholder="아이디 입력"/>
				<div id="idDiv" style="margin: 0 auto; font-size: 10px;" ></div>
			</td>
		</tr>
		
		<tr>
			<th style="margin: 0 auto; font-size: 15px;" align="center">비밀번호</th>
			<td>
				<input type="password" id="pwd" name="pwd" maxlength="15" placeholder="비밀번호를 입력하세요."/>
				<div id="pwdDiv" style="margin: 0 auto; font-size: 10px;" > </div>
			</td>
		</tr>
		
		<tr>
			<th style="margin: 0 auto; font-size: 15px;" align="center">비밀번호 확인</th>
			<td>
				<input type="password" id="repwd" name="repwd" class="chk" maxlength="15" placeholder="비밀번호를 입력하세요." />
				<div id = "repwdDiv" style="margin: 0 auto; font-size: 10px;"></div>
			</td>
		</tr>
		
		<tr>
			 <th style="margin: 0 auto; font-size: 15px;" align="center">이메일</th>
		     <td style="margin: 0 auto; font-size: 15px;">
				<input type="email" name="email1" id="email1" style="width: 100px;">
				@
				<input type="email" name="email2" id="email2" style="width: 100px;">
				<select id="email3" onchange="change()" style="width: 100px;">
					<option value="">직접입력</option>
					<option value="naver.com">naver.com</option>
					<option value="daum.net">daum.net</option>
					<option value="gmail.com">gmail.com</option>
				</select>
		      </td>
		</tr>
		
		<tr>
   		   <th style="margin: 0 auto; font-size: 15px;" align="center">전화번호</th>
	       <td>
			   <select name="tel1" id="tel1" style="width: 60px;">
			   <option value="010">010</option>
			   <option value="011">011</option>
			   <option value="016">016</option>
			   <option value="019">019</option>
			   </select>
			   -
			   <input type="tel" name="tel2" id="tel2" style="width: 70px;" >
			   -
			   <input type="tel" name="tel3" id="tel3" style="width: 70px;" >
	       </td>
		</tr>
		
		 <tr>
	   	    <th colspan="2" align="center">
			<input type="button" id="writeBtn" value="회원가입" >
			<input type="reset" value="다시작성">
		     </th>
		 </tr>
		
	</table>
  
</form>
	
	
</div><!-- container end -->



<%@ include file="../bottomTab.jsp" %><!-- bottomTab.jsp -->
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.1.min.js"></script>
<script type="text/javascript" src="/bitcafe/resources/js/bottomTab.js"></script><!-- bottomTab.js -->

<script type="text/javascript" src="/bitcafe/resources/js/write.js"></script>


<script type="text/javascript">

function change(){
	//alert(document.writeForm.email3.value);
	document.writeForm.email2.value = document.writeForm.email3.value;
}

</script>


>>>>>>> main
</body>
</html>











