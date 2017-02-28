<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@include file="layout.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<style>
	
	#content
	{
		margin-top:4%;
		float:right;
		position:absolute;
		margin-left:20%;
		}
		
	</style>
</head>
<body>
<div class="content" id="content">
	<h2 style="text-align: center;">내가 쓴 글</h2>
	<table class="pure-table pure-table-bordered" id="myListTbl">
		<thead>
		<tr style="text-align:center">
			<th>번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>작성일</th>
			<th>모집인원</th>
			<th>모집마감일</th>
			<th>현재인원</th>
			<th>수정</th>
			<th>삭제</th>
		</tr>
		</thead>
		
		<tbody>
		<tr>
			<td>1</td>
			<td>....</td>
			<td>...</td>
			<td>xxxx.xx.xx</td>
			<td>....</td>
			<td>xxxx.xx.xx</td>
			<td>...</td>
			<td><button  class="pure-button button-xsmall" id="update">수정</button></td>
			<td><button  class="pure-button button-xsmall" id="delete">삭제</button></td>
		</tr>
		</tbody>
	</table>
	<br/>
	<button style="text-align:center;" class="pure-button pure-button-primary" id="writeBtn">글쓰기</button>
</div>
</body>