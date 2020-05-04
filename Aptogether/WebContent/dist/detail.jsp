<%@page import="aptogether.model.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<style type="text/css">
.market-list{
	width: 180px;
	min-height: 200px;
}
img {
width:180px;
height:180px;
}
#ptext {
font-size:10px;
}

</style>
<title>SB Admin 2 - Dashboard</title>

<!-- Custom fonts for this template-->
<link href="/Aptogether/vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template-->

<link href="/Aptogether/css/sb-admin-2.min.css" rel="stylesheet">
</head>

<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">

   <jsp:include page="/userMenu.jsp"></jsp:include>
  <!-- Begin Page Content -->
        <div class="container-fluid">
    <!-- Content Row -->
          <div class="row">
					<p>중고거래</p>
					</div>
					<div class="row">
				<div class="card mb-4">
					<div class="card-body">
						<div class="card-body">
							<div>물품명: ${ product.product_name }</div>
							<div>작성자: ${ product.writer }</div>
							<div>
								<!-- •2020-04-06 14:11:45 -->
								<fmt:parseDate var="date" value="${product.regdate }"
									pattern="yyyy-MM-dd HH:mm:ss" />
								<fmt:formatDate value="${ date}" pattern="yyyy.MM.dd. HH:mm:ss" />
							</div>

							<!-- <div class="card-body"> -->
							<%-- <a href="/Aptogether/download.jsp?filename=${product.fname}">${product.fname}</a> --%>
							<c:if test="${product.fname != null }">
								<c:set var="head"
									value="${fn:substring(product.fname, 
												0, fn:length(product.fname)-4) }"></c:set>
								<c:set var="pattern"
									value="${fn:substring(product.fname, 
						fn:length(head) +1, fn:length(product.fname)) }"></c:set>
								<c:choose>
									<c:when test="${pattern == 'jpg' || pattern == 'gif'||pattern == 'png' }">
										<div class="hello">
											<img src="/Aptogether/upload/${head}.${pattern}">
										</div>
									</c:when>
									<c:otherwise>
										<%-- <c:out value="NO IMAGE"></c:out> --%>
									</c:otherwise>
								</c:choose>
							</c:if>


							<div>
							${ product.contents }
</div>
						</div>
						
						
						<br>
						<%
							Member member = (Member) session.getAttribute("member");
							String name = member.getName();
						%>
						<!-- r_writer -->
						<form action="insertReplyAction.do" method="post">
							<input type="hidden" name="seq" value="${product.seq}"> 
							<input
								type="hidden" name="r_writer" value="<%=name%>"><br>
							댓글쓰기:<%=name%><br>
							<input type="text" name="r_contents"><input
								type="submit" value="등록">

						</form>

						<a href="updateform.do?seq=${ product.seq }">수정</a> <a
							href="deleteaction.do?seq=${ product.seq }">삭제</a>
					</div>
				
</div>
				<div class="card mb-4">
					<div class="card-body">
						<div class="card-body">
<div>
<h5><p>댓글목록</p></h5>

						   <c:forEach var="reply" items="${list}">
   <tr>
   <td>${reply.r_writer }:</td>
   <td>${reply.r_contents }</td>
   <td><span id="ptext">${reply.r_regdate }</span></td>
   </tr>
   <br>
   </c:forEach>
   </div>
   </div></div></div>
   </div></div>
				<!-- Footer -->
				<footer class="sticky-footer bg-white">
					<div class="container my-auto">
						<div class="copyright text-center my-auto">
							<span>Copyright &copy; Your Website 2019</span>
						</div>
					</div>
				</footer>
				<!-- End of Footer -->
		
					</div>
					</div>
		<!-- End of Content Wrapper -->

	</div>
	<!-- End of Page Wrapper -->

	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>

	<!-- Logout Modal-->
	<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">Select "Logout" below if you are ready
					to end your current session.</div>
				<div class="modal-footer">
					<button class="btn btn-secondary" type="button"
						data-dismiss="modal">Cancel</button>
					<a class="btn btn-primary" href="login.html">Logout</a>
				</div>
			</div>
		</div>
	</div>

 <!-- Bootstrap core JavaScript-->
  <script src="/Aptogether/vendor/jquery/jquery.min.js"></script>
  <script src="/Aptogether/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="/Aptogether/vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="/Aptogether/js/sb-admin-2.min.js"></script>

  <!-- Page level plugins -->
  <script src="/Aptogether/vendor/chart.js/Chart.min.js"></script>

  <!-- Page level custom scripts -->
  <script src="/Aptogether/js/demo/chart-area-demo.js"></script>
  <script src="/Aptogether/js/demo/chart-pie-demo.js"></script>

</div>
</body>

</html>