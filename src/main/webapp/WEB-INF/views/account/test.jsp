<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="../resources/source/css/pure-min.css">
<link rel="stylesheet" href="../resources/source/css/side-menu.css">
<style>
.custom-restricted-width {
    /* To limit the menu width to the content of the menu: */
    display: inline;
    /* Or set the width explicitly: */
    width: 10em;
    
  
}
a:link{color:black;}
a:visited{text-decoration : none; color:black;}
a{text-decoration:none; color:black;}

h1 {margin-left : 5%; margin-top : 3%; margin-left:45%}
#frmJoin {margin-top : 5%;
       margin-left:35%;
      }

</style>
</head>

<body>
<div><h1><a href="/account/login">TEAM UP</a></h1></div>
<form class="pure-form pure-form-aligned" role="form" id="frmJoin"  method="post"  onsubmit="return validateMyForm();">
    <fieldset>
    
    
        <div class="pure-control-group">
            <label for="name">이름</label>
            <input required name = 'yy' id="name" type="text" placeholder="이름">
        </div>

        <div class="pure-controls">
           
            <button type="submit" class="pure-button pure-button-primary" id="btnJoin"  >제출</button>
            <button  class="pure-button pure-button-primary" id="btnCancel">취소</button>
        </div>
    </fieldset>
</form>

</body>
	<script src="../resources/source/js/jquery.validate.min.js"></script>
    <script src="../resources/source/js/jquery.form.js"></script>
    <script src="../resources/source/js/jquery-1.10.2.min.js"></script>
    
    <script type="text/javascript">
    
    
    	function validateMyForm()
    	{
    		var result = '${yyyyyy}';
    	  	alert(result);
    	  
    	  return true;
    	  
    	}
    	
        $("#btnCancel").click(function () {
        	var url = "/account/login";

            $(location).attr('href', url);
            return false;
        });

        
        
    </script>
</html>
