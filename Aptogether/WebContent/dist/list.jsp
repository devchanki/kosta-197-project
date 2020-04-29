<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
<link href="/Aptogether/dist/css/styles.css" rel="stylesheet"
	type="text/css" />
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
			<style>
#wannacenter {
	text-align: center;
}

#columns {
	column-width: 200px;
	column-gap: 15px;
}

#columns figure {
	display: inline-block;
	border: 1px solid rgba(0, 0, 0, 0.2);
	margin: 0;
	margin-bottom: 15px;
	padding: 10px;
	box-shadow: 2px 2px 5px rgba(0, 0, 0, 0.5);;
}

#columns figure img {
	width: 225px;
	height: 225px;
}

#columns figure figcaption {
	border-top: 1px solid rgba(0, 0, 0, 0.2);
	padding: 10px;
	margin-top: 11px;
}

#paginglist {
	text-align: center;
	margin: 0 auto;
}
</style>
			</head>
			<body>
				<h1 class="mt-4">
					<p></p>
					중고거래
				</h1>
				<div class="card-body">
					<div id="columns">
						<c:forEach var="board" items="${listModel.list}">
							<figure>
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
												test="${pattern == 'jpg' || pattern == 'gif' }">
												<img src="/Aptogether/upload/${head}_small.${pattern}">

											</c:when> <c:otherwise>
												<%-- <c:out value="NO IMAGE"></c:out> --%>
											</c:otherwise>
									</c:choose>
								</c:if>
								<a href="detailaction.do?seq=${board.seq}">
								<figcaption>물품명:${board.product_name}</figcaption>
							</figure>
						</c:forEach>

						<div class="card-body" id="paginglist">
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

						</div>

						<%--   <c:forEach var="board" items="${listModel.list}">
      ${board.seq}
      	<c:if test="${board.fname != null }">
						<c:set var="head" value="${fn:substring(board.fname, 
												0, fn:length(board.fname)-4) }"></c:set>
						<c:set var="pattern" value="${fn:substring(board.fname, 
						fn:length(head) +1, fn:length(board.fname)) }"></c:set>
					<img src="/MVC/WebContent/upload/${head}_small.${pattern}">
						<c:choose>
							<c:when test="${pattern == 'jpg' || pattern == 'gif' }">
								<img src="/Aptogether/upload/${head}_small.${pattern}">
								
							</c:when>
							<c:otherwise>
								<c:out value="NO IMAGE"></c:out>
							</c:otherwise>
						</c:choose>
					</c:if>
      ${board.writer}
         <fmt:parseDate var="dt" value="${board.regdate}" pattern="yyyy-MM-dd HH:mm:ss"/>
         <fmt:formatDate value="${dt}" pattern="yyyy/MM/dd"/>
       </c:forEach>
      
      <c:if test="${listModel.startPage>5}">
   <a href="listaction.do?pageNum=${listModel.startPage-1}">[이전]</a>
   </c:if>
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
   
       <c:if test="${listModel.endPage<listModel.totalPageCount }">
   <a href="listaction.do?pageNum=${listModel.endPage+1}">[이후]</a>
   </c:if>
       --%>
					</div>
				</div>



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



				<script src="https://code.jquery.com/jquery-3.4.1.min.js"
					crossorigin="anonymous"></script>
				<script
					src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"
					crossorigin="anonymous"></script>
				<script src="js/scripts.js"></script>
				<script
					src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"
					crossorigin="anonymous"></script>
				<script src="assets/demo/chart-area-demo.js"></script>
				<script src="assets/demo/chart-bar-demo.js"></script>
				<script
					src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"
					crossorigin="anonymous"></script>
				<script
					src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js"
					crossorigin="anonymous"></script>
				<script src="assets/demo/datatables-demo.js"></script>

			</body>
</html>
