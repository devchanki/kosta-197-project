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
<body id="page-top">

	<!-- Page Wrapper -->
	<div id="wrapper">

		<!-- Sidebar -->
		<%@ include file="userMenu.jsp"%>
		<!-- Begin Page Content -->
		<div class="container-fluid">

			<!-- Page Heading -->
			<div
				class="d-sm-flex align-items-center justify-content-between mb-4">
				<h1 class="h3 mb-0 text-gray-800">민원 작성 페이지 입니다</h1>
			</div>

			<!-- Content Row -->
			<div class="row">
				<div class="col-xl-12">
					<div id="modal">
						<div class="row">
							<div class="col-lg-6 offset-lg-3 col-sm-6 offset-sm-3 col-12">
								<form class="card w-100 card-block bg-faded"
									action="/Aptogether/apto/insertAction.do" method="post"
									class="form-horizontal" enctype="multipart/form-data">
									<legend class="m-b-1 text-center text-info">
										<strong> Contact us </strong>
									</legend>
									<div class="form-group input-group">
										<span class="has-float-label"> <input id="Title"
											name="Title" type="text" placeholder="*제목"
											class="form-control"> <label for="first">제목</label>
										</span>
									</div>
									<div class="form-group input-group">
										<span class="has-float-label"> <input id="Email"
											name="Email" type="text" placeholder="이메일"
											class="form-control"> <label for="email">이메일</label>
										</span>
									</div>
									<div class="form-group input-group">
										<span class="has-float-label"> <input id="Tel"
											name="Tel" type="text" placeholder="연락처" class="form-control">
											<label for="contact">연락처</label>
										</span>
									</div>
									<div class="form-group input-group">
										<span class="has-float-label"> <textarea
												class="form-control" id="Content" name="Content"
												placeholder="*상세 내용을 작성해주세요." rows="7"></textarea> <label
											for="message">내용</label>
										</span>
									</div>
									<div class="form-group input-group">
										<span class="has-float-label"> <input id="Fname"
											name="Fname" type="file" placeholder="파일"
											class="form-control"> <label for="contact">파일
												첨부</label>
										</span>
									</div>
									<div class="form-content">
										<div class="col-md-12 text-center">
											<input type="button" class="btn btn-primary btn-lg"
												id="cancel" value="취소"> <input type="submit"
												class="btn btn-primary btn-lg" value="작성하기" />
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div id="quickmain">
				<div class="quickline1 container-fluid">
					<div class="quick1 ">
						<a> <img src="/Aptogether/assets/img/noise.png">
							<dl>
								<dt>층간소음</dt>
							</dl>
						</a>
					</div>
					<div class="quick1">
						<img src="/Aptogether/assets/img/parking.png"></a>
						<dl>
							<dt>주차문제</dt>
						</dl>
					</div>
				</div>
				<div class="quickline2 container-fluid">
					<div class="quick2">
						<a style="text-decoration: none"> <img
							src="/Aptogether/assets/img/trash.png"></a>
						<dl>
							<dt>쓰레기 무단투기</dt>
						</dl>
					</div>
					<div class="quick2">
						<img src="/Aptogether/assets/img/choice.png">
						<dt>기타</dt>
						</dl>
					</div>
				</div>
			</div>
		</div>


	</div>
	<!-- End of Content Wrapper -->
	<!-- End of Main Content -->
	<jsp:include page="/footer.jsp"></jsp:include>
	<!-- End of Footer -->
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
	<script>
		var matches = document
				.querySelectorAll("div.quick1, div.quick2, #cancel");
		for (var i = 0; i < matches.length; i++) {
			matches[i].onclick = function() {
				$("#modal").toggle();
			}
		}
	</script>
</body>


</html>
