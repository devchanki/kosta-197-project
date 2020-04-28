<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="utf-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge" />
		<meta name="viewport"
			content="width=device-width, initial-scale=1, shrink-to-fit=no" />
		<meta name="description" content="" />
		<meta name="author" content="" />
		<title>Aptogether</title>
		<link href="css/styles.css" rel="stylesheet" />
		<link
			href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css"
			rel="stylesheet" crossorigin="anonymous" />
		<script
			src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/js/all.min.js"
			crossorigin="anonymous"></script>
	</head>
	<body class="sb-nav-fixed">
		<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
			<a class="navbar-brand" href="index.html">AparTogether</a>
			<button class="btn btn-link btn-sm order-1 order-lg-0"
				id="sidebarToggle" href="#">
				<i class="fas fa-bars"></i>
			</button>
			<!-- Navbar Search-->
			<form
				class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
				<div class="input-group">
					<input class="form-control" type="text" placeholder="Search for..."
						aria-label="Search" aria-describedby="basic-addon2" />
					<div class="input-group-append">
						<button class="btn btn-primary" type="button">
							<i class="fas fa-search"></i>
						</button>
					</div>
				</div>
			</form>
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
						<a class="dropdown-item" href="login.html">Logout</a>
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
						Start Bootstrap
					</div>
				</nav>
			</div>
			<div id="layoutSidenav_content">
				<main>
					<div class="container-fluid">
						<h1 class="mt-4">~호 관리비 조회</h1>
						<ol class="breadcrumb mb-4">
							<li class="breadcrumb-item active">Dashboard</li>
						</ol>
						<div class="row">
							<div class="col-xl-6">
								<div class="card mb-4">
									<div class="card-header">
										<i class="fas fa-chart-area mr-1"></i>관리비 현황
									</div>
									<div class="card-body">
									
									<div class="card mb-3" style="max-width: 540px;">
									  <div class="row no-gutters">
									    <div class="col-md-4">
									      <img src="css/image/receipt.PNG" class="card-img" alt="...">
									    </div>
									    <div class="col-md-8">
									      <div class="card-body">
									        <h5 class="card-title">관리비 고지서</h5>
									        <h3 class="card-text"><b>9000원</b></h3>
									        <p class="card-text"><small class="text-muted">전월대비</small></p>
									      </div>
									    </div>
									  </div>
									</div>
									<br><br>
										<canvas id="myBarChart" width="100%" height="50"></canvas>
									</div>
								</div>
							</div>
							<div class="col-xl-6">
								<div class="card mb-4">
									<div class="card-header">
										<i class="fas fa-chart-bar mr-1"></i>
									</div>
									<div id="accordion">
										<h3>청구내역요약</h3>
										<div class="card">
										  <ul class="list-group list-group-flush">
										    <li class="list-group-item">당월부과액 &nbsp;&nbsp;<b>1000원</b></li>
										    <li class="list-group-item">미납액</li>
										    <li class="list-group-item">미납연체료</li>
										    <li class="list-group-item">납기내금액</li>
										    <li class="list-group-item">납기후연체료</li>
										  </ul>
										</div>
										<h3>상세내역조회</h3>
										<div>
											<p>Sed non urna. Donec et ante. Phasellus eu ligula.
												Vestibulum sit amet purus. Vivamus hendrerit, dolor at
												aliquet laoreet, mauris turpis porttitor velit, faucibus
												interdum tellus libero ac justo. Vivamus non quam. In
												suscipit faucibus urna.</p>
										</div>
										<h3>월별청구내역</h3>
										<div>
											<p>Nam enim risus, molestie et, porta ac, aliquam ac,
												risus. Quisque lobortis. Phasellus pellentesque purus in
												massa. Aenean in pede. Phasellus ac libero ac tellus
												pellentesque semper. Sed ac felis. Sed commodo, magna quis
												lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus
												venenatis dui.</p>
											<ul>
												<li>List item one</li>
												<li>List item two</li>
												<li>List item three</li>
											</ul>
										</div>
									</div>
								</div>
							</div>						
						</div>
						<div class="card mb-4"></div>
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
		<script src="https://code.jquery.com/jquery-3.4.1.min.js"
			crossorigin="anonymous"></script>
		<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
		<link rel="stylesheet"
			href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
		<script>
			$(function() {
				$("#accordion").accordion();
			});
		</script>
		<script
			src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"
			crossorigin="anonymous"></script>
		<script src="js/scripts.js"></script>
		<script
			src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"
			crossorigin="anonymous"></script>
		<script src="assets/demo/chart-bar-demo.js"></script>
	</body>
</html>
