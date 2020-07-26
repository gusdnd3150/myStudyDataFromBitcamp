<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>

<% response.setContentType("text/html"); %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jstl/sql"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"  />
    
<%
	request.setCharacterEncoding("UTF-8");
%>

<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
   <title>회원 가입창</title>
   <style>
		.result {
		width: 500px;
		height: 500px;
		position: absolute;
		margin-top: -250px;
		margin-left: -250px;
		top: 50%;
		left: 50%;
		text-align:center;
		}
		input, textarea {
		background: #f4f5f4;
		border: none;
		margin-bottom: 10px;
		width: 200px;
		display: inline-block;
	}
		.btn {
		border: 1px solid #6b6b6b;
		color: #222;
		text-decoration: none;
		padding: 5px 15px;
		display: inline-block;
		margin: 5px 0;
		transition: 0.3s ease-in-out;
		-webkit-transition: 0.3s ease-in-out;
		-moz-transition: 0.3s ease-in-out;
		font-size: 13px;
		}
		.btn:hover {
			color: #fff;
			background: #1AAB8A;
			border: 1px solid #fff;
		}
		input[type="submit"] {
		background: #1AAB8A;
		color: #fff;
		width: 300px;
		margin-top: 30px;
		border: 1px solid #fff;
		padding: 10px;
	}
	
	input[type="reset"] {
		background: #ebebeb;
		color: #222;
		width: 300px;
		margin-top: 30px;
		border: 1px solid #fff;
		padding: 10px;
		transition: 0.3s ease-in-out;
		-webkit-transition: 0.3s ease-in-out;
		-moz-transition: 0.3s ease-in-out;
	}
	
	input[type="reset"]:hover {
		border: 1px solid #222;
		background: #fff;
	}
	
	input[type="submit"]:hover {
		background: #fff;
		color: #000;
		border: 1px solid #1AAB8A;
	}
	
	input[type="submit"] {
		transition: 0.3s ease-in-out;
		-webkit-transition: 0.3s ease-in-out;
		-moz-transition: 0.3s ease-in-out;
	}
	</style>
   <script>
   function chkVali(){
	   var id = document.getElementById("id").value;
	   var name = document.getElementById("name").value;
	   var pwd1 = document.getElementById("pwd1").value;
	   var pwd2 = document.getElementById("pwd2").value;
	   
	   if(!id){
		   alert("아이디를 입력해주세요.");
		   document.getElementById("id").focus();
		   return false;
	   }
	   
	   if(!name){
		   alert("이름을 입력해주세요.");
		   document.getElementById("name").focus();
		   return false;
	   }
	   
	   if(!pwd1){
		   alert("암호를 입력해주세요.");
		   document.getElementById("pwd1").focus();
		   return false;
	   }
	   
	   if(!pwd2){
		   alert("확인 암호를 입력해주세요.");
		   document.getElementById("pwd2").focus();
		   return false;
	   }
	   
	   if(pwd1 != pwd2){
		   var obj = document.getElementById("chkTxt2");
		   obj.style.visibility = "";
		   
	   }else{
		   obj.style.visibility = "hidden";
		   return true;
	   }

   }
   </script>
</head>
<body>
<div class="result">
	<form method="get"   action="MemberController" onSubmit="chkVali();return false">
			<input type="hidden" name="command" value="joinForm" />
			<label for="id">아이디: </label><input type="text" name="id" id="id"/><br>
			<span id="chkTxt" <c:if test="${param.chk ne 'N'}">style="visibility: hidden; margin-left: 30px;"</c:if>>이미 사용중인 아이디 입니다.</span><br><br>
			<label for="name">이름 : </label><input type="text" name="name" id="name" /><br><br>
			<label for="password">암호: </label><input type="password" name="pwd1" id="pwd1" /><br><br>
			<label for="pwd2" style="margin-left: 125px;">확인: <input type="password" name="pwd2" id="pwd2"/>
			<span id="chkTxt2" style="visibility: hidden;">암호와 확인이 일치하지 않습니다.</span><br><br>
			<br>
			<input type="submit" value="가입"/>	
	</form>
</div>
</body>
</html>