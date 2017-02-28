<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    
  
	<link rel="stylesheet" href="../resources/source/css/pure-min.css">
	<link rel="stylesheet" href="../resources/source/css/side-menu.css">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        .pure-form
        {
            width :80%;
        }
        body
        {
        	margin-top : 5%;
            margin-left:40%;
        }
        label
        {
            text-align:left !important; 
        }
    </style>
</head>
<body>
<h1>
	Login
</h1>
<form class="pure-form" name="frmLogin" method="post" onsubmit="return beforeSubmit()" >
    <fieldset>
       

        <input type="email" name ="email" placeholder="Email" id="email"><br/><br/>
        
        <input type="password" placeholder="Password" name="password" id="password">

        <input type="submit"  class="pure-button" id="btnLogin"  value="Login" />
    </fieldset>
</form>
<p>
    <button class="pure-button pure-button-primary" id="join" onclick="join()">회원가입</button>
    <button class="pure-button pure-button-primary" onclick="findPWD()">비밀번호 찾기</button>   
</p>

  <script>
	var result = '${msg}';
  	if(result == "none")
 		 alert("등록된 사용자가 아닙니다.");
  	else if(result == "failed")
		 alert("비밀번호가 맞지 않습니다.");
  	else if(result =="alreadyout")
  		alert("탈퇴한 사용자 입니다.");
  	
  	if(result == "out")alert("탈퇴되었습니다.");

    	
    function beforeSubmit(){
    	
    	var email = document.frmLogin.email.value;
    	var pwd = document.frmLogin.password.value;
    	

    	if((email|pwd == "") | (email&&pwd == "")){
    		alert("모두 채워주세요.");
    		location.href="/account/login";
    		return false;
    		 }    	
    	else{
    		document.frmLogin.submit();
    		
    	}

    }
    
    function join(){
    	location.href = "/account/join";
    }
    
    function findPWD(){
    	location.href="/account/findPasswd";
    }
   
    </script>
    
</body>
</html>
