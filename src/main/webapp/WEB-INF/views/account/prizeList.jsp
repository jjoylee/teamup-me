<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="true"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>        

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>수상내역</title>
</head>
<body>

<table id="prize" border="1" width="450" >
<tr>
            <td>이름</td>
             <td >수상내역 </td> 
          <td>저장/삭제</td>
        </tr>
            <form id="savePrize" action="prizeList" method="post" >  
            <tr>
            <td><input type="text" name="title" /></td>
            <td><input type="text" name="year" /></td>
            <td><input type="submit" value="저장"/></td>
            </tr>
            </form>
            
        <c:forEach items="${list}" var="PrizeVO">
       
       
        <tr>          
         
          <td ><input type="text" value= "${PrizeVO.title}" name="title" id="title" disabled></td>  
          <td ><input type="text" value="${PrizeVO.year}" name="year" disabled></td>
          <td><input type="button" onclick="delete_prize()" value="제거" id="delete">
           <form  method="post" id="removePrize" action="/account/removePrize"> 
           <input type="hidden" name="prizeId" value='${PrizeVO.prizeId}' > </form> </td>
          
        </tr>
        
        </c:forEach>       
</table>
<br/>
<input type="button" value="나가기" onclick="exit()" />


</body>



<script>

function delete_prize(){
    document.getElementById("removePrize").submit();
}

function exit(){
    window.opener.location.reload();
    window.close();

}

</script>
</html>