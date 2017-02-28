<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@include file="../layout.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="../resources/source/css/pure-min.css">
	<link rel="stylesheet" href="../resources/source/css/side-menu.css">
		<link rel="stylesheet" href="../resources/source/css/bootstrap.css">
	<style>
	
	#content
	{
		margin-top:4%;
		float:right;
		position:absolute;
		margin-left:20%;
		}
		
		ul.pagination {
    display: inline-block;
    padding: 0;
    margin: 0;
}

ul.pagination li {display: inline;}

ul.pagination li a {
    color: black;
    float: left;
    padding: 8px 16px;
    text-decoration: none;
}

ul.pagination li a.active {
    background-color: #4CAF50;
    color: white;
}

ul.pagination li a:hover:not(.active) {background-color: #ddd;}
		
	</style>
</head>
<body>
<div class="content" id="content">
	<h2 style="text-align: center;">Marketing</h2>
	<table class="pure-table pure-table-bordered" id="marketingListTbl">
		<thead>
		
		<tr style="text-align:center">
			<th>번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>작성일</th>
			<th>모집인원</th>
			<th>모집마감일</th>
			<th>현재인원</th>
			
		</tr>
		
		</thead>
		
		<tbody>
		<c:set var="count" value="0" />
		<c:forEach items="${list}" var="BoardVO">
		<tr>
			<td>${count = count + 1 }</td>
			<td><a href='/board/readWrite?boardId=${BoardVO.boardId}'>${BoardVO.title}</a></td>
			<td>${BoardVO.name}</td>
			<td><fmt:formatDate pattern="yyyy-MM-dd" value="${BoardVO.date}" /></td>
			<td>${BoardVO.memCount}</td>
			<td>${BoardVO.dueDate}</td>
			<td>${BoardVO.curCount}</td>
		</tr>
		</c:forEach>
		
		</tbody>
	</table>
	<div>
						
					</div>
					  <div class="text-center">
                        <ul class="pagination">

                            <c:if test="${pageMaker.prev}">
                                <li><a
                                    href="marketingList${pageMaker.makeSearch(pageMaker.startPage - 1) }">&laquo;</a></li>
                            </c:if>

                            <c:forEach begin="${pageMaker.startPage }"
                                end="${pageMaker.endPage }" var="idx">
                                <li
                                    <c:out value="${pageMaker.cri.page == idx?'class =active':''}"/>>
                                    <a href="marketingList${pageMaker.makeSearch(idx)}">${idx}</a>
                                </li>
                            </c:forEach>

                            <c:if test="${pageMaker.next && pageMaker.endPage > 0}">
                                <li><a
                                    href="marketingList${pageMaker.makeSearch(pageMaker.endPage +1) }">&raquo;</a></li>
                            </c:if>

                        </ul>
                    </div>
					
	<br/>
	
	<button style="text-align:center;" class="pure-button pure-button-primary" id="writeBtn">글쓰기</button>
	 <select name="searchType">
                        <option value="n"
                            <c:out value="${cri.searchType == null?'selected':''}"/>>
                            ---</option>
                        <option value="t"
                            <c:out value="${cri.searchType eq 't'?'selected':''}"/>>
                            Title</option>
                        
                    </select> <input type="text" name='keyword' id="keywordInput"
                        value='${cri.keyword }'>
                    <button id='searchBtn'>Search</button>
	
</div>
</body>

<script type="text/javascript">
$("#writeBtn").click(function (){
	var url = "/board/write";
	
	$(location).attr('href', url);
	return false;
});
</script>
<script>
    $(document).ready(
            function() {

                $('#searchBtn').on(
                        "click",
                        function(event) {

                            self.location = "marketingList"
                                    + '${pageMaker.makeQuery(1)}'
                                    + "&searchType="
                                    + $("select option:selected").val()
                                    + "&keyword=" + $('#keywordInput').val();

                        });
            });
</script>
<script src="../resources/source/js/jquery-1.10.2.min.js"></script>

</html>