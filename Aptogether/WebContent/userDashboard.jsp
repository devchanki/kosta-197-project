<%@page import="aptogether.model.ManageFee"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<% List<ManageFee> manageFee = (List<ManageFee>) request.getAttribute("list") ;
	ManageFee last = manageFee.get(0);
	ManageFee beforeLast = manageFee.get(1);
%>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>안녕하세요. 아파투게더입니다.</title>

  <!-- Custom fonts for this template-->
  <link href="/Aptogether/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="/Aptogether/css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

      <!-- Sidebar - Brand -->
      <a class="sidebar-brand d-flex align-items-center justify-content-center" style="color: white;">
        <div class="sidebar-brand-icon rotate-n-15">
          <i class="fas fa-laugh-wink"></i>
        </div>
        <div class="sidebar-brand-text mx-3">Aptogether</div>
      </a>

      <!-- Divider -->
      <hr class="sidebar-divider my-0">

      <!-- Nav Item - Dashboard -->
      <li class="nav-item active">
        <a class="nav-link" href="index.html">
          <i class="fas fa-fw fa-tachometer-alt"></i>
          <span>Dashboard</span></a>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Heading -->
      <div class="sidebar-heading">
        Interface
      </div>

      <!-- Nav Item - Pages Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
          <i class="fas fa-fw fa-cog"></i>
          <span>Components</span>
        </a>
        <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">Custom Components:</h6>
            <a class="collapse-item" href="buttons.html">Buttons</a>
            <a class="collapse-item" href="cards.html">Cards</a>
          </div>
        </div>
      </li>

      <!-- Nav Item - Utilities Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities" aria-expanded="true" aria-controls="collapseUtilities">
          <i class="fas fa-fw fa-wrench"></i>
          <span>Utilities</span>
        </a>
        <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">Custom Utilities:</h6>
            <a class="collapse-item" href="utilities-color.html">Colors</a>
            <a class="collapse-item" href="utilities-border.html">Borders</a>
            <a class="collapse-item" href="utilities-animation.html">Animations</a>
            <a class="collapse-item" href="utilities-other.html">Other</a>
          </div>
        </div>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Heading -->
      <div class="sidebar-heading">
        Addons
      </div>

      <!-- Nav Item - Pages Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages" aria-expanded="true" aria-controls="collapsePages">
          <i class="fas fa-fw fa-folder"></i>
          <span>Pages</span>
        </a>
        <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">Login Screens:</h6>
            <a class="collapse-item" href="login.html">Login</a>
            <a class="collapse-item" href="register.html">Register</a>
            <a class="collapse-item" href="forgot-password.html">Forgot Password</a>
            <div class="collapse-divider"></div>
            <h6 class="collapse-header">Other Pages:</h6>
            <a class="collapse-item" href="404.html">404 Page</a>
            <a class="collapse-item" href="blank.html">Blank Page</a>
          </div>
        </div>
      </li>

      <!-- Nav Item - Charts -->
      <li class="nav-item">
        <a class="nav-link" href="charts.html">
          <i class="fas fa-fw fa-chart-area"></i>
          <span>Charts</span></a>
      </li>

      <!-- Nav Item - Tables -->
      <li class="nav-item">
        <a class="nav-link" href="tables.html">
          <i class="fas fa-fw fa-table"></i>
          <span>Tables</span></a>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider d-none d-md-block">

      <!-- Sidebar Toggler (Sidebar) -->
      <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
      </div>

    </ul>
    <!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">

        <!-- Topbar -->
        <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

          <!-- Sidebar Toggle (Topbar) -->
          <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
            <i class="fa fa-bars"></i>
          </button>

          <!-- Topbar Search -->
          <form class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
            <div class="input-group">
              <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
              <div class="input-group-append">
                <button class="btn btn-primary" type="button">
                  <i class="fas fa-search fa-sm"></i>
                </button>
              </div>
            </div>
          </form>

          <!-- Topbar Navbar -->
          <ul class="navbar-nav ml-auto">

            <!-- Nav Item - Search Dropdown (Visible Only XS) -->
            <li class="nav-item dropdown no-arrow d-sm-none">
              <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-search fa-fw"></i>
              </a>
              <!-- Dropdown - Messages -->
              <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in" aria-labelledby="searchDropdown">
                <form class="form-inline mr-auto w-100 navbar-search">
                  <div class="input-group">
                    <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
                    <div class="input-group-append">
                      <button class="btn btn-primary" type="button">
                        <i class="fas fa-search fa-sm"></i>
                      </button>
                    </div>
                  </div>
                </form>
              </div>
            </li>

            <!-- Nav Item - Alerts -->
            <li class="nav-item dropdown no-arrow mx-1">
              <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-bell fa-fw"></i>
                <!-- Counter - Alerts -->
                <span class="badge badge-danger badge-counter">3+</span>
              </a>
              <!-- Dropdown - Alerts -->
              <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="alertsDropdown">
                <h6 class="dropdown-header">
                  Alerts Center
                </h6>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="mr-3">
                    <div class="icon-circle bg-primary">
                      <i class="fas fa-file-alt text-white"></i>
                    </div>
                  </div>
                  <div>
                    <div class="small text-gray-500">December 12, 2019</div>
                    <span class="font-weight-bold">A new monthly report is ready to download!</span>
                  </div>
                </a>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="mr-3">
                    <div class="icon-circle bg-success">
                      <i class="fas fa-donate text-white"></i>
                    </div>
                  </div>
                  <div>
                    <div class="small text-gray-500">December 7, 2019</div>
                    $290.29 has been deposited into your account!
                  </div>
                </a>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="mr-3">
                    <div class="icon-circle bg-warning">
                      <i class="fas fa-exclamation-triangle text-white"></i>
                    </div>
                  </div>
                  <div>
                    <div class="small text-gray-500">December 2, 2019</div>
                    Spending Alert: We've noticed unusually high spending for your account.
                  </div>
                </a>
                <a class="dropdown-item text-center small text-gray-500" href="#">Show All Alerts</a>
              </div>
            </li>

            <!-- Nav Item - Messages -->
            <li class="nav-item dropdown no-arrow mx-1">
              <a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-envelope fa-fw"></i>
                <!-- Counter - Messages -->
                <span class="badge badge-danger badge-counter">7</span>
              </a>
              <!-- Dropdown - Messages -->
              <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="messagesDropdown">
                <h6 class="dropdown-header">
                  Message Center
                </h6>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="dropdown-list-image mr-3">
                    <img class="rounded-circle" src="https://source.unsplash.com/fn_BT9fwg_E/60x60" alt="">
                    <div class="status-indicator bg-success"></div>
                  </div>
                  <div class="font-weight-bold">
                    <div class="text-truncate">Hi there! I am wondering if you can help me with a problem I've been having.</div>
                    <div class="small text-gray-500">Emily Fowler Â· 58m</div>
                  </div>
                </a>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="dropdown-list-image mr-3">
                    <img class="rounded-circle" src="https://source.unsplash.com/AU4VPcFN4LE/60x60" alt="">
                    <div class="status-indicator"></div>
                  </div>
                  <div>
                    <div class="text-truncate">I have the photos that you ordered last month, how would you like them sent to you?</div>
                    <div class="small text-gray-500">Jae Chun Â· 1d</div>
                  </div>
                </a>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="dropdown-list-image mr-3">
                    <img class="rounded-circle" src="https://source.unsplash.com/CS2uCrpNzJY/60x60" alt="">
                    <div class="status-indicator bg-warning"></div>
                  </div>
                  <div>
                    <div class="text-truncate">Last month's report looks great, I am very happy with the progress so far, keep up the good work!</div>
                    <div class="small text-gray-500">Morgan Alvarez Â· 2d</div>
                  </div>
                </a>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="dropdown-list-image mr-3">
                    <img class="rounded-circle" src="https://source.unsplash.com/Mv9hjnEUHR4/60x60" alt="">
                    <div class="status-indicator bg-success"></div>
                  </div>
                  <div>
                    <div class="text-truncate">Am I a good boy? The reason I ask is because someone told me that people say this to all dogs, even if they aren't good...</div>
                    <div class="small text-gray-500">Chicken the Dog Â· 2w</div>
                  </div>
                </a>
                <a class="dropdown-item text-center small text-gray-500" href="#">Read More Messages</a>
              </div>
            </li>

            <div class="topbar-divider d-none d-sm-block"></div>

            <!-- Nav Item - User Information -->
            <li class="nav-item dropdown no-arrow">
              <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <span class="mr-2 d-none d-lg-inline text-gray-600 small">${member.name }님</span>
                <img class="img-profile rounded-circle" src="https://source.unsplash.com/QAB-WJcbgJk/60x60">
              </a>
              <!-- Dropdown - User Information -->
              <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                <a class="dropdown-item" href="#">
                  <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                  Profile
                </a>
                <a class="dropdown-item" href="#">
                  <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
                  Settings
                </a>
                <a class="dropdown-item" href="#">
                  <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
                  Activity Log
                </a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                  <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                  Logout
                </a>
              </div>
            </li>

          </ul>

        </nav>
        <!-- End of Topbar -->

        <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Page Heading -->
          <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">${member.name }님 환영합니다</h1>
            <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i class="fas fa-download fa-sm text-white-50"></i> Generate Report</a>
          </div>

          <!-- Content Row -->
          <div class="row">

            <!-- Earnings (Monthly) Card Example -->
            <div class="col-xl-3 col-md-6 mb-4">
              <div class="card border-left-primary shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Earnings (Monthly)</div>
                      <div class="h5 mb-0 font-weight-bold text-gray-800">$40,000</div>
                    </div>
                    <div class="col-auto">
                      <i class="fas fa-calendar fa-2x text-gray-300"></i>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <!-- Earnings (Monthly) Card Example -->
            <div class="col-xl-3 col-md-6 mb-4">
              <div class="card border-left-success shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-success text-uppercase mb-1">Earnings (Annual)</div>
                      <div class="h5 mb-0 font-weight-bold text-gray-800">$215,000</div>
                    </div>
                    <div class="col-auto">
                      <i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <!-- Earnings (Monthly) Card Example -->
            <div class="col-xl-3 col-md-6 mb-4">
              <div class="card border-left-info shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-info text-uppercase mb-1">Tasks</div>
                      <div class="row no-gutters align-items-center">
                        <div class="col-auto">
                          <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">50%</div>
                        </div>
                        <div class="col">
                          <div class="progress progress-sm mr-2">
                            <div class="progress-bar bg-info" role="progressbar" style="width: 50%" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="col-auto">
                      <i class="fas fa-clipboard-list fa-2x text-gray-300"></i>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <!-- Pending Requests Card Example -->
            <div class="col-xl-3 col-md-6 mb-4">
              <div class="card border-left-warning shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">Pending Requests</div>
                      <div class="h5 mb-0 font-weight-bold text-gray-800">18</div>
                    </div>
                    <div class="col-auto">
                      <i class="fas fa-comments fa-2x text-gray-300"></i>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          
          
                                  <div class="row">
                            <div class="col-xl-6">
                                <div class="card mb-4">
                                    <div class="card-header"><i class="fas fa-chart-area mr-1"></i>관리비 현황</div>
                                    <div class="card-body">
										<div class="card mb-3" style="max-width: 540px;">
											<div class="row no-gutters">
												<div class="col-md-4">
													<img src="css/image/receipt.PNG" class="card-img" alt="관리비">
												</div>
												<div class="col-md-8">
													<div class="card-body">
														<h5 class="card-title"><%=last.getPay_date()%>월 관리비 고지서</h5>
														<h3 class="card-text">
															<b id="thisMonthFee">
															<%= last.getGeneral_fee() + last.getSecurity_fee() + last.getCleaning_fee() + last.getFumigation_fee()
															+ last.getLift_maintenance_fee() + last.getElectricity_fee() + last.getWater_fee() + last.getHeating_fee()
																%>원
															</b>
														</h3>
														<p class="card-text">
															<small class="text-muted">전월대비</small>
														</p>
													</div>
												</div>
											</div>
										</div>
										<br><br><br>                                    
                                    <canvas id="myBarChart" width="100%" height="40"></canvas></div>
                                </div>
                            </div>
						<div class="col-xl-6">
							<div class="card mb-4">
								<div class="card-header">
									<i class="fas fa-chart-bar mr-1"></i>
								</div>
								<div class="accordion" id="accordionExample">
									<div class="card">
										<div class="card-header" id="headingOne">
											<h2 class="mb-0">
												<button class="btn btn-link" type="button"
													data-toggle="collapse" data-target="#collapseOne"
													aria-expanded="true" aria-controls="collapseOne">
													청구내역요약</button>
											</h2>
										</div>
										<div id="collapseOne" class="collapse show"
											aria-labelledby="headingOne" data-parent="#accordionExample">
											<div class="card-body">
												<ul class="list-group list-group-flush">
													<li class="list-group-item">당월부과액</li>
													<li class="list-group-item">미납액</li>
													<li class="list-group-item">미납연체료</li>
													<li class="list-group-item">납기내금액</li>
													<li class="list-group-item">납기후연체료</li>
												</ul>
											</div>
										</div>
									</div>
									<div class="card">
										<div class="card-header" id="headingTwo">
											<h2 class="mb-0">
												<button class="btn btn-link collapsed" type="button"
													data-toggle="collapse" data-target="#collapseTwo"
													aria-expanded="false" aria-controls="collapseTwo">
													상세내역조회</button>
											</h2>
										</div>
										<div id="collapseTwo" class="collapse"
											aria-labelledby="headingTwo" data-parent="#accordionExample">
											<div class="card-body">
												<table class="table">
													<thead>
														<tr>
															<th scope="row">항목</th>
															<th scope="row">전월</th>
															<th scope="row">당월</th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td>일반관리비</td>
															<td><%=beforeLast.getGeneral_fee()%>원</td>
															<td><%= last.getGeneral_fee()%>원</td>
														</tr>
														<tr>
															<td>경비비</td>
															<td><%= beforeLast.getSecurity_fee()%>원</td>
															<td><%= last.getSecurity_fee()%>원</td>
														</tr>
														<tr>
															<td>청소비</td>
															<td><%= beforeLast.getCleaning_fee()%>원</td>
															<td><%= last.getCleaning_fee()%>원</td>
														</tr>
														<tr>
															<td>소독비</td>
															<td><%= beforeLast.getFumigation_fee()%>원</td>
															<td><%= last.getFumigation_fee()%>원</td>
														</tr>
														<tr>
															<td>승강비유지비</td>
															<td><%= beforeLast.getLift_maintenance_fee()%>원</td>
															<td><%= last.getLift_maintenance_fee()%>원</td>
														</tr>
														<tr>
															<td>전기세</td>
															<td><%= beforeLast.getElectricity_fee()%>원</td>
															<td><%= last.getElectricity_fee()%>원</td>
														</tr>
														<tr>
															<td>수도세</td>
															<td><%= beforeLast.getWater_fee()%>원</td>
															<td><%= last.getWater_fee()%>원</td>
														</tr>
														<tr>
															<td>난방비</td>
															<td><%= beforeLast.getHeating_fee()%>원</td>
															<td><%= last.getHeating_fee()%>원</td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
									</div>
									<div class="card">
										<div class="card-header" id="headingThree">
											<h2 class="mb-0">
												<button class="btn btn-link collapsed" type="button"
													data-toggle="collapse" data-target="#collapseThree"
													aria-expanded="false" aria-controls="collapseThree">
													월별청구내역</button>
											</h2>
										</div>
										<div id="collapseThree" class="collapse"
											aria-labelledby="headingThree"
											data-parent="#accordionExample">
											<div class="card-body">Anim pariatur cliche
												reprehenderit, enim eiusmod high life accusamus terry
												richardson ad squid. 3 wolf moon officia aute, non cupidatat
												skateboard dolor brunch. Food truck quinoa nesciunt laborum
												eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird
												on it squid single-origin coffee nulla assumenda shoreditch
												et. Nihil anim keffiyeh helvetica, craft beer labore wes
												anderson cred nesciunt sapiente ea proident. Ad vegan
												excepteur butcher vice lomo. Leggings occaecat craft beer
												farm-to-table, raw denim aesthetic synth nesciunt you
												probably haven't heard of them accusamus labore sustainable
												VHS.</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>  
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          

          <!-- Content Row -->

          <div class="row">

            <!-- Area Chart -->
            <div class="col-xl-8 col-lg-7">
              <div class="card shadow mb-4">
                <!-- Card Header - Dropdown -->
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                  <h6 class="m-0 font-weight-bold text-primary">Earnings Overview</h6>
                  <div class="dropdown no-arrow">
                    <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in" aria-labelledby="dropdownMenuLink">
                      <div class="dropdown-header">Dropdown Header:</div>
                      <a class="dropdown-item" href="#">Action</a>
                      <a class="dropdown-item" href="#">Another action</a>
                      <div class="dropdown-divider"></div>
                      <a class="dropdown-item" href="#">Something else here</a>
                    </div>
                  </div>
                </div>
                <!-- Card Body -->
                <div class="card-body">
                  <div class="chart-area">
                    <canvas id="myAreaChart"></canvas>
                  </div>
                </div>
              </div>
            </div>

            <!-- Pie Chart -->
            <div class="col-xl-4 col-lg-5">
              <div class="card shadow mb-4">
                <!-- Card Header - Dropdown -->
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                  <h6 class="m-0 font-weight-bold text-primary">Revenue Sources</h6>
                  <div class="dropdown no-arrow">
                    <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in" aria-labelledby="dropdownMenuLink">
                      <div class="dropdown-header">Dropdown Header:</div>
                      <a class="dropdown-item" href="#">Action</a>
                      <a class="dropdown-item" href="#">Another action</a>
                      <div class="dropdown-divider"></div>
                      <a class="dropdown-item" href="#">Something else here</a>
                    </div>
                  </div>
                </div>
                <!-- Card Body -->
                <div class="card-body">
                  <div class="chart-pie pt-4 pb-2">
                    <canvas id="myPieChart"></canvas>
                  </div>
                  <div class="mt-4 text-center small">
                    <span class="mr-2">
                      <i class="fas fa-circle text-primary"></i> Direct
                    </span>
                    <span class="mr-2">
                      <i class="fas fa-circle text-success"></i> Social
                    </span>
                    <span class="mr-2">
                      <i class="fas fa-circle text-info"></i> Referral
                    </span>
                  </div>
                </div>
              </div>
            </div>
          </div>

         
        <!-- /.container-fluid -->
	  <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">DataTables Example</h6>
            </div>
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                      <th>Name</th>
                      <th>Position</th>
                      <th>Office</th>
                      <th>Age</th>
                      <th>Start date</th>
                      <th>Salary</th>
                    </tr>
                  </thead>
                  <tfoot>
                    <tr>
                      <th>Name</th>
                      <th>Position</th>
                      <th>Office</th>
                      <th>Age</th>
                      <th>Start date</th>
                      <th>Salary</th>
                    </tr>
                  </tfoot>
                  <tbody>
                    <tr>
                      <td>Tiger Nixon</td>
                      <td>System Architect</td>
                      <td>Edinburgh</td>
                      <td>61</td>
                      <td>2011/04/25</td>
                      <td>$320,800</td>
                    </tr>
                    <tr>
                      <td>Garrett Winters</td>
                      <td>Accountant</td>
                      <td>Tokyo</td>
                      <td>63</td>
                      <td>2011/07/25</td>
                      <td>$170,750</td>
                    </tr>
                    <tr>
                      <td>Ashton Cox</td>
                      <td>Junior Technical Author</td>
                      <td>San Francisco</td>
                      <td>66</td>
                      <td>2009/01/12</td>
                      <td>$86,000</td>
                    </tr>
                    <tr>
                      <td>Cedric Kelly</td>
                      <td>Senior Javascript Developer</td>
                      <td>Edinburgh</td>
                      <td>22</td>
                      <td>2012/03/29</td>
                      <td>$433,060</td>
                    </tr>
                    <tr>
                      <td>Airi Satou</td>
                      <td>Accountant</td>
                      <td>Tokyo</td>
                      <td>33</td>
                      <td>2008/11/28</td>
                      <td>$162,700</td>
                    </tr>
                    <tr>
                      <td>Brielle Williamson</td>
                      <td>Integration Specialist</td>
                      <td>New York</td>
                      <td>61</td>
                      <td>2012/12/02</td>
                      <td>$372,000</td>
                    </tr>
                    <tr>
                      <td>Herrod Chandler</td>
                      <td>Sales Assistant</td>
                      <td>San Francisco</td>
                      <td>59</td>
                      <td>2012/08/06</td>
                      <td>$137,500</td>
                    </tr>
                    <tr>
                      <td>Rhona Davidson</td>
                      <td>Integration Specialist</td>
                      <td>Tokyo</td>
                      <td>55</td>
                      <td>2010/10/14</td>
                      <td>$327,900</td>
                    </tr>
                    <tr>
                      <td>Colleen Hurst</td>
                      <td>Javascript Developer</td>
                      <td>San Francisco</td>
                      <td>39</td>
                      <td>2009/09/15</td>
                      <td>$205,500</td>
                    </tr>
                    <tr>
                      <td>Sonya Frost</td>
                      <td>Software Engineer</td>
                      <td>Edinburgh</td>
                      <td>23</td>
                      <td>2008/12/13</td>
                      <td>$103,600</td>
                    </tr>
                    <tr>
                      <td>Jena Gaines</td>
                      <td>Office Manager</td>
                      <td>London</td>
                      <td>30</td>
                      <td>2008/12/19</td>
                      <td>$90,560</td>
                    </tr>
                    <tr>
                      <td>Quinn Flynn</td>
                      <td>Support Lead</td>
                      <td>Edinburgh</td>
                      <td>22</td>
                      <td>2013/03/03</td>
                      <td>$342,000</td>
                    </tr>
                    <tr>
                      <td>Charde Marshall</td>
                      <td>Regional Director</td>
                      <td>San Francisco</td>
                      <td>36</td>
                      <td>2008/10/16</td>
                      <td>$470,600</td>
                    </tr>
                    <tr>
                      <td>Haley Kennedy</td>
                      <td>Senior Marketing Designer</td>
                      <td>London</td>
                      <td>43</td>
                      <td>2012/12/18</td>
                      <td>$313,500</td>
                    </tr>
                    <tr>
                      <td>Tatyana Fitzpatrick</td>
                      <td>Regional Director</td>
                      <td>London</td>
                      <td>19</td>
                      <td>2010/03/17</td>
                      <td>$385,750</td>
                    </tr>
                    <tr>
                      <td>Michael Silva</td>
                      <td>Marketing Designer</td>
                      <td>London</td>
                      <td>66</td>
                      <td>2012/11/27</td>
                      <td>$198,500</td>
                    </tr>
                    <tr>
                      <td>Paul Byrd</td>
                      <td>Chief Financial Officer (CFO)</td>
                      <td>New York</td>
                      <td>64</td>
                      <td>2010/06/09</td>
                      <td>$725,000</td>
                    </tr>
                    <tr>
                      <td>Gloria Little</td>
                      <td>Systems Administrator</td>
                      <td>New York</td>
                      <td>59</td>
                      <td>2009/04/10</td>
                      <td>$237,500</td>
                    </tr>
                    <tr>
                      <td>Bradley Greer</td>
                      <td>Software Engineer</td>
                      <td>London</td>
                      <td>41</td>
                      <td>2012/10/13</td>
                      <td>$132,000</td>
                    </tr>
                    <tr>
                      <td>Dai Rios</td>
                      <td>Personnel Lead</td>
                      <td>Edinburgh</td>
                      <td>35</td>
                      <td>2012/09/26</td>
                      <td>$217,500</td>
                    </tr>
                    <tr>
                      <td>Jenette Caldwell</td>
                      <td>Development Lead</td>
                      <td>New York</td>
                      <td>30</td>
                      <td>2011/09/03</td>
                      <td>$345,000</td>
                    </tr>
                    <tr>
                      <td>Yuri Berry</td>
                      <td>Chief Marketing Officer (CMO)</td>
                      <td>New York</td>
                      <td>40</td>
                      <td>2009/06/25</td>
                      <td>$675,000</td>
                    </tr>
                    <tr>
                      <td>Caesar Vance</td>
                      <td>Pre-Sales Support</td>
                      <td>New York</td>
                      <td>21</td>
                      <td>2011/12/12</td>
                      <td>$106,450</td>
                    </tr>
                    <tr>
                      <td>Doris Wilder</td>
                      <td>Sales Assistant</td>
                      <td>Sidney</td>
                      <td>23</td>
                      <td>2010/09/20</td>
                      <td>$85,600</td>
                    </tr>
                    <tr>
                      <td>Angelica Ramos</td>
                      <td>Chief Executive Officer (CEO)</td>
                      <td>London</td>
                      <td>47</td>
                      <td>2009/10/09</td>
                      <td>$1,200,000</td>
                    </tr>
                    <tr>
                      <td>Gavin Joyce</td>
                      <td>Developer</td>
                      <td>Edinburgh</td>
                      <td>42</td>
                      <td>2010/12/22</td>
                      <td>$92,575</td>
                    </tr>
                    <tr>
                      <td>Jennifer Chang</td>
                      <td>Regional Director</td>
                      <td>Singapore</td>
                      <td>28</td>
                      <td>2010/11/14</td>
                      <td>$357,650</td>
                    </tr>
                    <tr>
                      <td>Brenden Wagner</td>
                      <td>Software Engineer</td>
                      <td>San Francisco</td>
                      <td>28</td>
                      <td>2011/06/07</td>
                      <td>$206,850</td>
                    </tr>
                    <tr>
                      <td>Fiona Green</td>
                      <td>Chief Operating Officer (COO)</td>
                      <td>San Francisco</td>
                      <td>48</td>
                      <td>2010/03/11</td>
                      <td>$850,000</td>
                    </tr>
                    <tr>
                      <td>Shou Itou</td>
                      <td>Regional Marketing</td>
                      <td>Tokyo</td>
                      <td>20</td>
                      <td>2011/08/14</td>
                      <td>$163,000</td>
                    </tr>
                    <tr>
                      <td>Michelle House</td>
                      <td>Integration Specialist</td>
                      <td>Sidney</td>
                      <td>37</td>
                      <td>2011/06/02</td>
                      <td>$95,400</td>
                    </tr>
                    <tr>
                      <td>Suki Burks</td>
                      <td>Developer</td>
                      <td>London</td>
                      <td>53</td>
                      <td>2009/10/22</td>
                      <td>$114,500</td>
                    </tr>
                    <tr>
                      <td>Prescott Bartlett</td>
                      <td>Technical Author</td>
                      <td>London</td>
                      <td>27</td>
                      <td>2011/05/07</td>
                      <td>$145,000</td>
                    </tr>
                    <tr>
                      <td>Gavin Cortez</td>
                      <td>Team Leader</td>
                      <td>San Francisco</td>
                      <td>22</td>
                      <td>2008/10/26</td>
                      <td>$235,500</td>
                    </tr>
                    <tr>
                      <td>Martena Mccray</td>
                      <td>Post-Sales support</td>
                      <td>Edinburgh</td>
                      <td>46</td>
                      <td>2011/03/09</td>
                      <td>$324,050</td>
                    </tr>
                    <tr>
                      <td>Unity Butler</td>
                      <td>Marketing Designer</td>
                      <td>San Francisco</td>
                      <td>47</td>
                      <td>2009/12/09</td>
                      <td>$85,675</td>
                    </tr>
                    <tr>
                      <td>Howard Hatfield</td>
                      <td>Office Manager</td>
                      <td>San Francisco</td>
                      <td>51</td>
                      <td>2008/12/16</td>
                      <td>$164,500</td>
                    </tr>
                    <tr>
                      <td>Hope Fuentes</td>
                      <td>Secretary</td>
                      <td>San Francisco</td>
                      <td>41</td>
                      <td>2010/02/12</td>
                      <td>$109,850</td>
                    </tr>
                    <tr>
                      <td>Vivian Harrell</td>
                      <td>Financial Controller</td>
                      <td>San Francisco</td>
                      <td>62</td>
                      <td>2009/02/14</td>
                      <td>$452,500</td>
                    </tr>
                    <tr>
                      <td>Timothy Mooney</td>
                      <td>Office Manager</td>
                      <td>London</td>
                      <td>37</td>
                      <td>2008/12/11</td>
                      <td>$136,200</td>
                    </tr>
                    <tr>
                      <td>Jackson Bradshaw</td>
                      <td>Director</td>
                      <td>New York</td>
                      <td>65</td>
                      <td>2008/09/26</td>
                      <td>$645,750</td>
                    </tr>
                    <tr>
                      <td>Olivia Liang</td>
                      <td>Support Engineer</td>
                      <td>Singapore</td>
                      <td>64</td>
                      <td>2011/02/03</td>
                      <td>$234,500</td>
                    </tr>
                    <tr>
                      <td>Bruno Nash</td>
                      <td>Software Engineer</td>
                      <td>London</td>
                      <td>38</td>
                      <td>2011/05/03</td>
                      <td>$163,500</td>
                    </tr>
                    <tr>
                      <td>Sakura Yamamoto</td>
                      <td>Support Engineer</td>
                      <td>Tokyo</td>
                      <td>37</td>
                      <td>2009/08/19</td>
                      <td>$139,575</td>
                    </tr>
                    <tr>
                      <td>Thor Walton</td>
                      <td>Developer</td>
                      <td>New York</td>
                      <td>61</td>
                      <td>2013/08/11</td>
                      <td>$98,540</td>
                    </tr>
                    <tr>
                      <td>Finn Camacho</td>
                      <td>Support Engineer</td>
                      <td>San Francisco</td>
                      <td>47</td>
                      <td>2009/07/07</td>
                      <td>$87,500</td>
                    </tr>
                    <tr>
                      <td>Serge Baldwin</td>
                      <td>Data Coordinator</td>
                      <td>Singapore</td>
                      <td>64</td>
                      <td>2012/04/09</td>
                      <td>$138,575</td>
                    </tr>
                    <tr>
                      <td>Zenaida Frank</td>
                      <td>Software Engineer</td>
                      <td>New York</td>
                      <td>63</td>
                      <td>2010/01/04</td>
                      <td>$125,250</td>
                    </tr>
                    <tr>
                      <td>Zorita Serrano</td>
                      <td>Software Engineer</td>
                      <td>San Francisco</td>
                      <td>56</td>
                      <td>2012/06/01</td>
                      <td>$115,000</td>
                    </tr>
                    <tr>
                      <td>Jennifer Acosta</td>
                      <td>Junior Javascript Developer</td>
                      <td>Edinburgh</td>
                      <td>43</td>
                      <td>2013/02/01</td>
                      <td>$75,650</td>
                    </tr>
                    <tr>
                      <td>Cara Stevens</td>
                      <td>Sales Assistant</td>
                      <td>New York</td>
                      <td>46</td>
                      <td>2011/12/06</td>
                      <td>$145,600</td>
                    </tr>
                    <tr>
                      <td>Hermione Butler</td>
                      <td>Regional Director</td>
                      <td>London</td>
                      <td>47</td>
                      <td>2011/03/21</td>
                      <td>$356,250</td>
                    </tr>
                    <tr>
                      <td>Lael Greer</td>
                      <td>Systems Administrator</td>
                      <td>London</td>
                      <td>21</td>
                      <td>2009/02/27</td>
                      <td>$103,500</td>
                    </tr>
                    <tr>
                      <td>Jonas Alexander</td>
                      <td>Developer</td>
                      <td>San Francisco</td>
                      <td>30</td>
                      <td>2010/07/14</td>
                      <td>$86,500</td>
                    </tr>
                    <tr>
                      <td>Shad Decker</td>
                      <td>Regional Director</td>
                      <td>Edinburgh</td>
                      <td>51</td>
                      <td>2008/11/13</td>
                      <td>$183,000</td>
                    </tr>
                    <tr>
                      <td>Michael Bruce</td>
                      <td>Javascript Developer</td>
                      <td>Singapore</td>
                      <td>29</td>
                      <td>2011/06/27</td>
                      <td>$183,000</td>
                    </tr>
                    <tr>
                      <td>Donna Snider</td>
                      <td>Customer Support</td>
                      <td>New York</td>
                      <td>27</td>
                      <td>2011/01/25</td>
                      <td>$112,000</td>
                    </tr>
                  </tbody>
                </table>
              </div>
            </div>
          </div>

        </div>
      </div>
      <!-- End of Main Content -->

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
    <!-- End of Content Wrapper -->

  </div>
  <!-- End of Page Wrapper -->

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

  <!-- Logout Modal-->
  <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">Ã</span>
          </button>
        </div>
        <div class="modal-body">정말 로그아웃 하시겠습니까?</div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
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
  <script src="/Aptogether/dist/js/checkManageFee.js"></script>
  <script src="/Aptogether/js/demo/chart-area-demo.js"></script>
  <script src="/Aptogether/js/demo/chart-pie-demo.js"></script>
    <script src="/Aptogether/vendor/datatables/jquery.dataTables.min.js"></script>
  <script src="/Aptogether/vendor/datatables/dataTables.bootstrap4.min.js"></script>
  <script src="/Aptogether/js/demo/datatables-demo.js"></script>

</body>

</html>