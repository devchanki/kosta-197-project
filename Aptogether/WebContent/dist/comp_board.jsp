<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html> 	
<html lang="ko">
<head>

<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="stylesheet" href="/Aptogether/dist/css/comp_board.css">
<script src="./vendor/modernizr.custom.min.js"></script>
<script src="./vendor/jquery-1.10.2.min.js"></script>
<script src="./vendor/jquery-ui-1.10.3.custom.min.js"></script>
<script src="../tooptip-hover-intent/jquery.hover.js"></script>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>민원게시판입니다.</title>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  $( function() {
    $( "#accordion" ).accordion();
  } );
  </script>
<style>
</style>
<script type="text/javascript" src='jquery.js'></script>
</head>
<body>
<div id = "maintitle">나의 민원</div>
	<hr align="center" style="border: solid 2px #CCCCCC; width: 65%;">
		
		
	<div id ="comptable">
	<div id="accordion">	
	
	<c:forEach var = "aaa" items="${listModel.list}">
  		<div id = "accotitle">${aaa.title }</div>
    <div class = "accocontent">
    <div id = "contenttext">
    <p>
    	제목: ${aaa.title }<br>
		내용: ${aaa.content }	 <br>
		<a href="download.jsp?filename=${aaa.fname }">${aaa.fname }</a>
    </p>
    </div>
	
	<div id = "buttonArea">
	<button class="button"> <a href="CompDelete.do?seq=${ aaa.seq }">문의 취소</a></button>
	</div>
		
	<%-- <c:forEach var="reply" items="${replys}">
   <tr>
   <td>${reply.r_contents }</td>
   <td>${reply.r_regdate }</td>
   </tr>
   </c:forEach> --%>
   
     </div>
       </c:forEach>
       
     </div>
     </div>
     
     
     <div id = "pageArea">
     <c:if test="${listModel.startPage>5}">
   <a href="Compboard.do?pageNum=${listModel.startPage-1}">[이전]</a>
   </c:if>
   
     <c:forEach var="pageNo" begin="${listModel.startPage }" end="${listModel.endPage }">
   <c:choose>
    <c:when test="${listModel.requestPage== pageNo}">
    <a href="Compboard.do?pageNum=${pageNo}">[<b>${pageNo}</b>]</a>
    </c:when>
    <c:otherwise>
   <a href="Compboard.do?pageNum=${pageNo}">[${pageNo}]</a>
  </c:otherwise>
   </c:choose>
   
   </c:forEach>
   
    <c:if test="${listModel.endPage<listModel.totalPageCount }">
   <a href="Compboard.do?pageNum=${listModel.endPage+1}">[이후]</a>
   </c:if>
  	
   <button type = "button" id = "compwrite"><a href="../apto/compWrite.do">민원작성</a></button>
  
   </div>
</body>

</html>