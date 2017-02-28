<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
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
            margin-left:40%;
            margin-top:5%;
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
<form class="pure-form" id="frmLogin" method="post" >
    <fieldset>
        <input type="email" name ="email" placeholder="Email">
        <p></p>
        <input type="password" placeholder="Password" name="password">


        <button class="pure-button" id="btnLogin">Login</button>
    </fieldset>
</form>
<p>
    <button class="pure-button pure-button-primary" id="join">회원가입</button>
     <button class="pure-button pure-button-primary" id="findPasswd">비밀번호 찾기</button>
</p>
</body>
</html>
