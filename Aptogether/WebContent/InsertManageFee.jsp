<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title></title>
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
	<jsp:include page="managerMenu.jsp"></jsp:include>
				<!-- End of Topbar -->

				<!-- Begin Page Content -->
				<div class="container-fluid">

					<!-- Page Heading -->
					<div
						class="d-sm-flex align-items-center justify-content-between mb-4">
						<h1 class="h3 mb-0 text-gray-800">관리비청구 페이지</h1>
						<a href="#"
							class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
							class="fas fa-download fa-sm text-white-50"></i> Generate Report</a>
					</div>


					<!-- Content Row -->
					<div class="row">

						<div class="container-fluid">
							<div class="card mb-4">
								<div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
									<h6 class="m-0 font-weight-bold text-primary">관리비 청구내역</h6>
								</div>
								<div class="card-body">
									<form>
										<div class="form-group row">
											<label for="member_seq" class="col-sm-2 col-form-label">입주민번호</label>
											<div class="col-sm-10">
												<input type="text" readonly class="form-control-plaintext"
													id="member_seq">
											</div>
										</div>
										<div class="form-group row">
											<label for="pay_date" class="col-sm-2 col-form-label">청구일자</label>
											<div class="col-sm-10">
												<input type="date" class="form-control" id="pay_date">
											</div>
										</div>
										<div class="form-group row">
											<label for="general_fee" class="col-sm-2 col-form-label">일반관리비</label>
											<div class="col-sm-10">
												<input type="text" class="form-control" id="general_fee">
											</div>
										</div>
										<div class="form-group row">
											<label for="security_fee" class="col-sm-2 col-form-label">경비비</label>
											<div class="col-sm-10">
												<input type="text" class="form-control" id="security_fee">
											</div>
										</div>
										<div class="form-group row">
											<label for="cleaning_fee" class="col-sm-2 col-form-label">청소비</label>
											<div class="col-sm-10">
												<input type="text" class="form-control" id="cleaning_fee">
											</div>
										</div>
										<div class="form-group row">
											<label for="fumigation_fee" class="col-sm-2 col-form-label">소독비</label>
											<div class="col-sm-10">
												<input type="text" class="form-control" id="fumigation_fee">
											</div>
										</div>
										<div class="form-group row">
											<label for="lift_maintenance_fee"
												class="col-sm-2 col-form-label">승강기유지비</label>
											<div class="col-sm-10">
												<input type="text" class="form-control"
													id="lift_maintenance_fee">
											</div>
										</div>
										<div class="form-group row">
											<label for="electricity_fee" class="col-sm-2 col-form-label">전기세</label>
											<div class="col-sm-10">
												<input type="text" class="form-control" id="electricity_fee">
											</div>
										</div>
										<div class="form-group row">
											<label for="water_fee" class="col-sm-2 col-form-label">수도세</label>
											<div class="col-sm-10">
												<input type="text" class="form-control" id="water_fee">
											</div>
										</div>
										<div class="form-group row">
											<label for="heating_fee" class="col-sm-2 col-form-label">난방비</label>
											<div class="col-sm-10">
												<input type="text" class="form-control" id="heating_fee">
											</div>
										</div>
									</form>
									<button class="btn btn-primary" id="manage_fee_register">관리비 등록</button>
									<hr>
									<div>
										<table class="table table-bordered fee-table" width="100%" cellspacing="0"></table>
									</div>
								</div>
							</div>
						</div>

					</div>

				</div>
				<!-- /.container-fluid -->
					<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true"></span>
					</button>
				</div>
				<div class="modal-body"> 정말 로그아웃 하시겠습니까? </div>
				<div class="modal-footer">
					<button class="btn btn-secondary" type="button"
						data-dismiss="modal">Cancel</button>
					<a class="btn btn-primary" href="/Aptogether/member/logout.do">Logout</a>
				</div>
			</div>
		</div>
	</div>
			</div>
			<!-- End of Main Content -->

			<!-- Footer -->
				<jsp:include page="/footer.jsp"></jsp:include>
			<!-- End of Footer -->

		</div>
		
		<!-- End of Content Wrapper -->

	</div>
	<!-- End of Page Wrapper -->

	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>
	


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
    <script type="text/javascript">
	   var member_seq_init = <%= request.getParameter("member_seq") %>;
	   	$(function() {
	   		$('#member_seq').val( <%= request.getParameter("member_seq") %>);
	   	});
   </script>
	<script src="/Aptogether/dist/js/manageFeeReg.js"></script>   
	<script src="/Aptogether/vendor/datatables/jquery.dataTables.min.js"></script>
	<script src="/Aptogether/vendor/datatables/dataTables.bootstrap4.min.js"></script>
	<script src="/Aptogether/js/demo/datatables-demo.js"></script>
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>

</body>

</html>
