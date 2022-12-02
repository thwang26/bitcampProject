<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
</body>
</html>











