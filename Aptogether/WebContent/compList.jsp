<%@page import="aptogether.model.ManageFee"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>안녕하세요. 아파투게더입니다.</title>

<!-- Custom fonts for this template-->
<link href="/Aptogether/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link href="/Aptogether/css/sb-admin-2.min.css" rel="stylesheet">
<link rel="stylesheet" href="/Aptogether/css/comp_select.css">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<body id="page-top">

	<!-- Page Wrapper -->
	<div id="wrapper">

		<!-- Sidebar -->
		<%@ include file="userMenu.jsp"%>
		<!-- Begin Page Content -->
		<div class="container-fluid">

			<!-- Content Row -->
			<div class="row">
				<div class="col-xl-12">
					<div id="maintitle">나의 민원</div>
					<hr align="center" style="border: solid 2px #CCCCCC; width: 65%;">


					<div id="comptable ">
						<div id="accordion">
							<c:forEach var="aaa" items="${listModel.list}">
								<div id="accotitle">${aaa.title }</div>
								<div class="accocontent">
									<div id="contenttext">
										<p>
											제목: ${aaa.title }<br> 내용: ${aaa.contents } <br> <a
												href="download.jsp?filename=${aaa.fname }">${aaa.fname }</a>
										</p>
									</div>

									<div id="buttonArea">
										<button class="button">
											<a href="CompDelete.do?seq=${ aaa.seq }">문의 취소</a>
										</button>
									</div>
								</div>
							</c:forEach>
						</div>
					</div>


					<div id="pageArea" style="text-align: center;">
						<c:if test="${listModel.startPage>5}">
							<a href="Compboard.do?pageNum=${listModel.startPage-1}">[이전]</a>
						</c:if>

						<c:forEach var="pageNo" begin="${listModel.startPage }"
							end="${listModel.endPage }">
							<c:choose>
								<c:when test="${listModel.requestPage== pageNo}">
									<a href="Compboard.do?pageNum=${pageNo}">[<b>${pageNo}</b>]
									</a>
								</c:when>
								<c:otherwise>
									<a href="Compboard.do?pageNum=${pageNo}">[${pageNo}]</a>
								</c:otherwise>
							</c:choose>

						</c:forEach>

						<c:if test="${listModel.endPage<listModel.totalPageCount }">
							<a href="Compboard.do?pageNum=${listModel.endPage+1}">[이후]</a>
						</c:if>

						<button type="button" id="compwrite">
							<a href="/Aptogether/apto/compWrite.do">민원작성</a>
						</button>
					</div>
				</div>
			</div>
		</div>
		<!-- End of Main Content -->

		<!-- End of Footer -->

	</div>
	<!-- End of Content Wrapper -->
	<jsp:include page="/footer.jsp"></jsp:include>
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
						<span aria-hidden="true">x</span>
					</button>
				</div>
				<div class="modal-body">정말 로그아웃 하시겠습니까?</div>
				<div class="modal-footer">
					<button class="btn btn-secondary" type="button"
						data-dismiss="modal">Cancel</button>
					<a class="btn btn-primary" href="/Aptogether/member/logout.do">Logout</a>
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
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script>
		$(function() {
			$("#accordion").accordion();
		});
	</script>

	</script>
</body>


</html>
