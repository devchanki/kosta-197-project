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
.market-list {
	width: 180px;
	min-height: 200px;
}

img {
	width: 180px;
	height: 180px;
}

#pagination {
	display: block;
	text-align: center;
}
</style>
<title>Aptogether - 중고장터</title>

<!-- Custom fonts for this template-->
<link href="/Aptogether/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
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
							<div class="d-sm-flex align-items-center justify-content-between mb-4">
					<h1 class="h3 mb-0 text-gray-800">중고장터 목록</h1>
					<a href="/Aptogether/Market/insertform.do"
						class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
						class="fas fa-download fa-sm text-white-50"></i> 중고장터 등록하기 </a>
				</div>
			<div class="row">


				
				<div class="row row-cols-1 row-cols-md-3">
					<c:forEach var="board" items="${listModel.list}">
						<div class="col mb-4">
							<a href="detailaction.do?seq=${board.seq}">
								<div class="card market-list">
									<c:if test="${board.fname != null }">
										<c:set var="head"
											value="${fn:substring(board.fname, 
												0, fn:length(board.fname)-4) }"></c:set>
										<c:set var="pattern"
											value="${fn:substring(board.fname, 
						fn:length(head) +1, fn:length(board.fname)) }"></c:set>
										<%-- <img src="/MVC/WebContent/upload/${head}_small.${pattern}"> --%>
										<c:choose>
											<c:when
												test="${pattern == 'jpg' || pattern == 'gif'|| pattern == 'png'}">
												<img src="/Aptogether/upload/${head}.${pattern}"
													class="card-img-top">

											</c:when>
											<c:otherwise>
												<%-- <c:out value="NO IMAGE"></c:out> --%>
											</c:otherwise>
										</c:choose>
									</c:if>

									<div class="card-body">
										<h5 class="card-title">${board.product_name}</h5>
										<p class="card-text">판매자:${board.writer}</p>
									</div>

								</div>
							</a>
						</div>
					</c:forEach>

					<!-- 	<div class="card-body" id="paginglist"> -->

				</div>
				
			</div>
								<div class="card-body" id="pagination">
						<ul>
							<c:if test="${listModel.startPage>5}">
								<a href="listaction.do?pageNum=${listModel.startPage-1}">[이전]</a>
							</c:if>
							<c:forEach var="pageNo" begin="${listModel.startPage }"
								end="${listModel.endPage }">
								<c:choose>
									<c:when test="${listModel.requestPage== pageNo}">
										<a href="listaction.do?pageNum=${pageNo}">[<b>${pageNo}</b>]
										</a>
									</c:when>
									<c:otherwise>
										<a href="listaction.do?pageNum=${pageNo}">[${pageNo}]</a>
									</c:otherwise>
								</c:choose>

							</c:forEach>

							<c:if test="${listModel.endPage<listModel.totalPageCount }">
								<a href="listaction.do?pageNum=${listModel.endPage+1}">[이후]</a>
							</c:if>
						</ul>
					</div>
		</div>
	</div>
	<!-- Footer -->
	<jsp:include page="/footer.jsp"></jsp:include>
	<!-- End of Footer -->

	<!-- End of Content Wrapper -->


	<!-- End of Page Wrapper -->

	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>

	<!-- Logout Modal-->
	<jsp:include page="logoutModal.jsp"></jsp:include>

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