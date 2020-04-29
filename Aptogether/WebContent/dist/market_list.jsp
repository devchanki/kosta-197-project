<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <table border="1">
      <tr>
         <td>글번호</td>
         <td>이미지</td>
         <td>글제목</td>
         <td>작성자</td>
         <td>작성일자</td>
         <td>조회수</td>
      </tr>

      <c:forEach var="board" items="${listModel.list}">
      <tr>
         <td>${board.seq}</td> <!-- detailAction.do 로 가는 이유는 데이터를 넘겨주기위해서 바로 jsp로 안가는 이유는 단순한 표현이기때문 -->
         <td>
					<c:if test="${board.fname != null }">
						<c:set var="head" value="${fn:substring(board.fname, 
												0, fn:length(board.fname)-4) }"></c:set>
						<c:set var="pattern" value="${fn:substring(board.fname, 
						fn:length(head) +1, fn:length(board.fname)) }"></c:set>
					<%-- <img src="/MVC/WebContent/upload/${head}_small.${pattern}"> --%>
						<c:choose>
							<c:when test="${pattern == 'jpg' || pattern == 'gif' }">
								<img src="/Aptogether/upload/${head}_small.${pattern}">
								
							</c:when>
							<c:otherwise>
								<c:out value="NO IMAGE"></c:out>
							</c:otherwise>
						</c:choose>
					</c:if>
			</td>		
<%--          <td><a href="detailAction.do?seq=${board.seq}">${board.title}</a></td>  --%>
         
         <td>${board.writer}</td>
         
         <td>
         <!-- "2020-04-02 14:57:47" -->
         <fmt:parseDate var="dt" value="${board.regdate}" pattern="yyyy-MM-dd HH:mm:ss"/>
         <fmt:formatDate value="${dt}" pattern="yyyy/MM/dd"/>
         </td>
      </tr>
      
      </c:forEach>
   </table>
   <br><br><br>
   <!-- 페이지처리 영역 -->
   <!-- 이전 -->
   
   <c:if test="${listModel.startPage>5}">
   <a href="listaction.do?pageNum=${listModel.startPage-1}">[이전]</a>
   </c:if>
   
<%--    <c:choose>
<c:when test="${fruit=='애플'}">
<c:out value="apple"/></c:when>
<c:when test="${fruit=='오렌지'}">
<c:out value="orange"/></c:when>
<c:otherwise>
 <c:out value="기타과일"/>
</c:otherwise>
</c:choose> --%>
   
   <!-- 페이지 목록출력 -->
   <c:forEach var="pageNo" begin="${listModel.startPage }" end="${listModel.endPage }">
   <c:choose>
    <c:when test="${listModel.requestPage== pageNo}">
    <a href="listaction.do?pageNum=${pageNo}">[<b>${pageNo}</b>]</a>
    </c:when>
    <c:otherwise>
   <a href="listaction.do?pageNum=${pageNo}">[${pageNo}]</a>
  </c:otherwise>
   </c:choose>
   
   </c:forEach>
   
   <!-- 이후 -->
   <c:if test="${listModel.endPage<listModel.totalPageCount }">
   <a href="listaction.do?pageNum=${listModel.endPage+1}">[이후]</a>
   </c:if>
   
</body>
</html>






