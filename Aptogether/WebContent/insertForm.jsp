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
.market-list {
	width: 180px;
	min-height: 200px;
}

img {
	width: 180px;
	height: 180px;
}

#ptext {
	font-size: 10px;
}
.margin-auto{
	margin: auto;
}
.title-text{
	text-align: center;
	font-size: 24px;
	color: #454545;
}

</style>
<title>Aptogether - 중고장터 등록하기</title>

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
			<div class="row">
				<div class="card mb-4 margin-auto">
					<div class="card-body">
						<div class="flex-column title-text">
							중고상품 등록하기
						</div>
						<form action="/Aptogether/Market/insertaction.do" method="post"
							enctype="multipart/form-data">
							<div class="card-body">
								작성자: &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input
									type="text" name="writer"><br>
								<br> 판매물품 :&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input
									type="text" name="product_name"><br>
								<br>
								가격:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input
									type="number" name="price"><br>
								<br>
							</div>


							<div class="card-body">

								사진:
								<p></p>
								<input type="file" name="fname">
								<p id="hey">
									<button id="dd" onclick="addimg()">사진 더 추가하기</button>
									<br>
							</div>
							<div class="card-body">
								내용 <br>
								<textarea rows="6" cols="70" name="contents"></textarea>
								<br> 판매중:<input type="text" name="isSale"> <input
									type="submit" value="등록">
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		<!-- Footer -->
		<jsp:include page="/footer.jsp"></jsp:include>
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







