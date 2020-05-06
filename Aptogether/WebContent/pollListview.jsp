<%@page import="aptogether.model.ManageFee"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
<title>안녕하세요. 아파투게더입니다.</title>

<!-- Custom fonts for this template-->
<link href="/Aptogether/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">

<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link href="/Aptogether/css/sb-admin-2.css" rel="stylesheet">
<link href="/Aptogether/css/Poll.css" rel="stylesheet">
<body id="page-top">

	<!-- Page Wrapper -->
	<div id="wrapper">

		<!-- Sidebar -->
		<%@ include file="/userMenu.jsp"%>
		<!-- Begin Page Content -->
		<div class="container-fluid">

			<!-- Page Heading -->
			<div
				class="d-sm-flex align-items-center justify-content-between mb-4">
				<h1 class="h3 mb-0 text-gray-800">투표참여</h1>
			</div>

			<!-- Content Row -->
			<div class="flex-column">

				<!-- pollList 출력 -->
				<c:forEach var="poll" items="${list}">
					<div class="card custom-bg mb-4 margin-auto max-width-card"
						data-toggle="modal" data-target="#option_modal"
						onclick="showData(${poll.poll_seq} , '${poll.question}', '${poll.contents }'  )">
						<div class="card-body text-white">
							<h5 class="card-title">${poll.question }</h5>
							<p class="small text-white">
								<c:set var="contents" value="${poll.contents }" />
								${fn:substring(contents,0,20)}...
							</p>
						</div>
						<div class="card-footer custom-bg small text-white">
							<img id="poll_hitcount" src="/Aptogether/eye.png"> 조회수 :
							${poll.hitcount} <span class="margin-left-span"><fmt:parseDate
									var="date" value="${poll.end_date}"
									pattern="yyyy-MM-dd HH:mm:ss" /> <fmt:formatDate
									value="${date }" pattern="yyyy년 MM월 dd일 마감" /> </span>
						</div>
					</div>
				</c:forEach>
			</div>

			<!-- 투표선택 모달 시작 -->
			<div class="modal fade" id="option_modal" tabindex="-1" role="dialog"
				aria-labelledby="myModalLabel">
				<div class="modal-dialog" role="document">
					<form action="/Aptogether/poll/PollSelectInsertAction.do">
						<div class="modal-content">
							<div class="modal-header">
								<h4 class="modal-title" id="myModalLabel"></h4>
								<button type="button" class="close" data-dismiss="modal"
									aria-label="Close">
									<span aria-hidden="true">×</span>
								</button>
							</div>
							<div class="modal-body">
								<h5 id="myModalContents"></h5>
							</div>
							<div class="modal-body">
								<div class="option_modal_body"></div>
								<div class="modal-footer">
									<input type="submit" class="btn btn-outline-info" value="저장">
									<button id="d" type="button" class="btn btn-outline-dark"
										data-dismiss="modal">취소</button>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
			<!-- 투표선택 모달 끝 -->
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

	<!-- Page level plugins -->
	<script src="/Aptogether/vendor/chart.js/Chart.min.js"></script>

	<!-- Page level custom scripts -->
	<script src="/Aptogether/js/moment.min.js"></script>
<script src="/Aptogether/js/poll.js"></script>
</body>


</html>
