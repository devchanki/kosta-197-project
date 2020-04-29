<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Aptogether - 관리사무실</title>
<link href="/Aptogether/dist/css/styles.css" rel="stylesheet" />
<link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet" crossorigin="anonymous" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/js/all.min.js" crossorigin="anonymous"></script>
</head>
<body class="sb-nav-fixed">
	<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
		<a class="navbar-brand" href="index.html">AparTogether</a>
		<button class="btn btn-link btn-sm order-1 order-lg-0"
			id="sidebarToggle" href="#">
			<i class="fas fa-bars"></i>
		</button>
		<!-- Navbar Search-->
		<!-- Navbar-->
		<ul class="navbar-nav ml-auto ml-md-0">
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" id="userDropdown" href="#"
				role="button" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
				<div class="dropdown-menu dropdown-menu-right"
					aria-labelledby="userDropdown">
					<a class="dropdown-item" href="#">Settings</a><a
						class="dropdown-item" href="#">Activity Log</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="/Aptogether/member/logout.do">Logout</a>
				</div></li>
		</ul>
	</nav>
	<div id="layoutSidenav">
		<div id="layoutSidenav_nav">
			<nav class="sb-sidenav accordion sb-sidenav-dark"
				id="sidenavAccordion">
				<div class="sb-sidenav-menu">
					<div class="nav">
						<div class="sb-sidenav-menu-heading">Core</div>
						<a class="nav-link" href="index.html"><div
								class="sb-nav-link-icon">
								<i class="fas fa-tachometer-alt"></i>
							</div> Dashboard</a>
						<div class="sb-sidenav-menu-heading">Interface</div>
						<a class="nav-link collapsed" href="#" data-toggle="collapse"
							data-target="#collapseLayouts" aria-expanded="false"
							aria-controls="collapseLayouts"><div
								class="sb-nav-link-icon">
								<i class="fas fa-columns"></i>
							</div> Layouts
							<div class="sb-sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div></a>
						<div class="collapse" id="collapseLayouts"
							aria-labelledby="headingOne" data-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav">
								<a class="nav-link" href="layout-static.html">Static
									Navigation</a><a class="nav-link" href="layout-sidenav-light.html">Light
									Sidenav</a>
							</nav>
						</div>
						<a class="nav-link collapsed" href="#" data-toggle="collapse"
							data-target="#collapsePages" aria-expanded="false"
							aria-controls="collapsePages"><div
								class="sb-nav-link-icon">
								<i class="fas fa-book-open"></i>
							</div> Pages
							<div class="sb-sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div></a>
						<div class="collapse" id="collapsePages"
							aria-labelledby="headingTwo" data-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav accordion"
								id="sidenavAccordionPages">
								<a class="nav-link collapsed" href="#" data-toggle="collapse"
									data-target="#pagesCollapseAuth" aria-expanded="false"
									aria-controls="pagesCollapseAuth">Authentication
									<div class="sb-sidenav-collapse-arrow">
										<i class="fas fa-angle-down"></i>
									</div>
								</a>
								<div class="collapse" id="pagesCollapseAuth"
									aria-labelledby="headingOne"
									data-parent="#sidenavAccordionPages">
									<nav class="sb-sidenav-menu-nested nav">
										<a class="nav-link" href="login.html">Login</a><a
											class="nav-link" href="register.html">Register</a><a
											class="nav-link" href="password.html">Forgot Password</a>
									</nav>
								</div>
								<a class="nav-link collapsed" href="#" data-toggle="collapse"
									data-target="#pagesCollapseError" aria-expanded="false"
									aria-controls="pagesCollapseError">Error
									<div class="sb-sidenav-collapse-arrow">
										<i class="fas fa-angle-down"></i>
									</div>
								</a>
								<div class="collapse" id="pagesCollapseError"
									aria-labelledby="headingOne"
									data-parent="#sidenavAccordionPages">
									<nav class="sb-sidenav-menu-nested nav">
										<a class="nav-link" href="401.html">401 Page</a><a
											class="nav-link" href="404.html">404 Page</a><a
											class="nav-link" href="500.html">500 Page</a>
									</nav>
								</div>
							</nav>
						</div>
						<div class="sb-sidenav-menu-heading">Addons</div>
						<a class="nav-link" href="charts.html"><div
								class="sb-nav-link-icon">
								<i class="fas fa-chart-area"></i>
							</div> Charts</a><a class="nav-link" href="tables.html"><div
								class="sb-nav-link-icon">
								<i class="fas fa-table"></i>
							</div> Tables</a>
					</div>
				</div>
				<div class="sb-sidenav-footer">
					<div class="small">Logged in as:</div>
					${member.name}
				</div>
			</nav>
		</div>
		<div id="layoutSidenav_content">
			<main>
			<div class="container-fluid">
				<h3 class="mt-4">관리사무실 - ${member.name}님 반갑습니다.</h3>
				<ol class="breadcrumb mb-4">
					<li class="breadcrumb-item active">Dashboard</li>
				</ol>
				<div class="row">
					<div class="col-xl-3 col-md-6">
						<div class="card bg-primary text-white mb-4">
							<div class="card-body">Primary Card</div>
							<div
								class="card-footer d-flex align-items-center justify-content-between">
								<a class="small text-white stretched-link" href="#">View
									Details</a>
								<div class="small text-white">
									<i class="fas fa-angle-right"></i>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xl-3 col-md-6">
						<div class="card bg-warning text-white mb-4">
							<div class="card-body">Warning Card</div>
							<div
								class="card-footer d-flex align-items-center justify-content-between">
								<a class="small text-white stretched-link" href="#">View
									Details</a>
								<div class="small text-white">
									<i class="fas fa-angle-right"></i>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xl-3 col-md-6">
						<div class="card bg-success text-white mb-4">
							<div class="card-body">Success Card</div>
							<div
								class="card-footer d-flex align-items-center justify-content-between">
								<a class="small text-white stretched-link" href="#">View
									Details</a>
								<div class="small text-white">
									<i class="fas fa-angle-right"></i>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xl-3 col-md-6">
						<div class="card bg-danger text-white mb-4">
							<div class="card-body">Danger Card</div>
							<div
								class="card-footer d-flex align-items-center justify-content-between">
								<a class="small text-white stretched-link" href="#">View
									Details</a>
								<div class="small text-white">
									<i class="fas fa-angle-right"></i>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-xl-6">
						<div class="card mb-4">
							<div class="card-header">
								<i class="fas fa-chart-area mr-1"></i>관리비 현황
							</div>
							<div class="card-body">
								<canvas id="myAreaChart" width="100%" height="40"></canvas>
							</div>
						</div>
					</div>
					<div class="col-xl-6">
						<div class="card mb-4">
							<div class="card-header">
								<i class="fas fa-chart-bar mr-1"></i>Bar Chart Example
							</div>
							<div class="card-body">
								<canvas id="myBarChart" width="100%" height="40"></canvas>
							</div>
						</div>
					</div>
					  <div class="col-xl-6">
					    <div class="card mb-4">
					      <div class="card-body">
					        <h5 class="card-title">관리비 청구하기</h5>
					        <p class="card-text">입주민의 동·호수를 조회 후 관리비 청구등록을 합니다.</p>
					        <button class="btn btn-primary" id="checkMQ">입주민 조회</button>
					      </div>
					    </div>
					  </div>
					  <div class="col-xl-6">
					    <div class="card mb-4">
					      <div class="card-body">
					        <h5 class="card-title">Special title treatment</h5>
					        <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
					        <a href="#" class="btn btn-primary">Go somewhere</a>
					      </div>
					    </div>
					  </div>					
				</div>
				<div class="card mb-4">
					<div class="card-header">
						<i class="fas fa-table mr-1"></i>승인을 기다리고 있는 주민들
					</div>
					<div class="card-body">
						<div class="table-responsive">
							<table class="table table-bordered" id="dataTable" width="100%"
								cellspacing="0">
								<thead>
									<tr>
										<th>이름</th>
										<th>동</th>
										<th>호</th>
										<th>가입일</th>
										<th>승인</th>
									</tr>
								</thead>
								<tfoot>
									<tr>
										<th>이름</th>
										<th>동</th>
										<th>호</th>
										<th>아이디</th>
										<th>승인</th>
									</tr>
								</tfoot>
								<tbody>
									<c:forEach var="user" items="${waiting}" >
										<tr>
											<td>${user.name}</td>
											<td>${user.dong} </td>
											<td>${user.ho }</td>
											<td>${user.id }</td>
											<td><button class="btn btn-danger" onclick="admitUser(${user.member_seq})">승인하기</button>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
			
			
			
	   <!-- 입주민번호 찾기 모달폼1 -->
		<div class="modal" id="findMQ-modal" tabindex="-1" role="dialog">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title">[AparTogether] 입주민번호 등록</h5>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<div class="form-group row">
							<label for="dong" class="col-sm-2 col-form-label">동</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="dong" name="dong" placeholder="101">
							</div>
						</div>
						<div class="form-group row">
							<label for="ho" class="col-sm-2 col-form-label">호</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="ho" name="ho" placeholder="1101">
							</div>
						</div>
						<div class="modal-footer">
							<button type="button" id="find_MQ" class="btn btn-primary">찾기</button>
							<button type="button" id="cancle_MQ" class="btn btn-secondary" data-dismiss="modal">취소</button>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<!-- 입주민번호 찾기 모달폼2 -->
		<div class="modal" id="findMQ-modal2" tabindex="-1" role="dialog">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title">[AparTogether] 입주민번호 등록</h5>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<form action="" method="post">
				     <div class="modal-body">
				          <div class="form-group">
				            <label for="MQinfo" class="col-form-label">입력하신 정보가 맞습니까?</label>
				            <input type="text" class="form-control" id="MQinfo" disabled="disabled">
				          </div>
				      </div>
						<div class="modal-footer">
							<button type="button" id="find_MQ2" class="btn btn-primary"><a id="moveMFR" >이동</a></button>
							<button type="button" id="cancle_MQ2" class="btn btn-secondary" data-dismiss="modal">취소</button>
						</div>
					</form>
					</div>
				</div>
			</div>
			
			</main>
			<footer class="py-4 bg-light mt-auto">
				<div class="container-fluid">
					<div
						class="d-flex align-items-center justify-content-between small">
						<div class="text-muted">Copyright &copy; Your Website 2019</div>
						<div>
							<a href="#">Privacy Policy</a> &middot; <a href="#">Terms
								&amp; Conditions</a>
						</div>
					</div>
				</div>
			</footer>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.4.1.min.js" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
	<script src="js/scripts.js"></script>
    <script src="js/findMemberSeq.js"></script>	
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
	<script src="assets/demo/chart-area-demo.js"></script>
	<script src="assets/demo/chart-bar-demo.js"></script>
	<script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
	<script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>
	<script src="assets/demo/datatables-demo.js"></script>
	<script type="text/javascript">
		function admitUser(num) {
			console.log(num);
			$.ajax({
				url: "/Aptogether/member/admitUser.do",
				method: "POST",
				dataType: "text",
				data: {
					"seq": num
				},
				success: function(data) {
					console.log(data);
					if(data == "success"){
						alert("승인에 성공하셨습니다.");
						location.reload();
					}else {
						alert("조금 있다 다시 시도해주세요.");
					}
				}
			})
		}
	</script>
</body>
</html>