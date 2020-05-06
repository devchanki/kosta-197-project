<%@page import="aptogether.model.ManageFee"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<% 
	List<ManageFee> list = (List<ManageFee>) request.getAttribute("list");
	List<ManageFee> listReverse = new  ArrayList<ManageFee>();
	if(list != null) {
		for(int i = list.size() -1 ; i >= 0; i--) {
			listReverse.add(list.get(i));
		}
		request.setAttribute("reverseFee", listReverse);
	}
%>

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
<script type="text/javascript">
	var data = [];
	var label = [];
	<c:forEach items="${reverseFee}" var="fee">
		console.log("${fee}");
		data.push(${fee.getTotalValue()});
		console.log("${fee.pay_date}");
		var tmpDate = new Date("${fee.pay_date}");
		console.log(tmpDate);
		console.log(tmpDate.getFullYear());
		label.push(tmpDate.getFullYear() + "-" + (tmpDate.getMonth()+1));
	</c:forEach>
	
	var pieData1 = [${last.getGeneral_fee()}, ${last.getSecurity_fee()}, ${last.getCleaning_fee()}, ${last.getFumigation_fee()},
		${last.getLift_maintenance_fee()}, ${last.getElectricity_fee()}, ${last.getWater_fee()}, ${last.getHeating_fee()} ];
	var pieData2 = [${beforeLast.getGeneral_fee()}, ${beforeLast.getSecurity_fee()}, ${beforeLast.getCleaning_fee()}, ${beforeLast.getFumigation_fee()},
		${beforeLast.getLift_maintenance_fee()}, ${beforeLast.getElectricity_fee()}, ${beforeLast.getWater_fee()}, ${beforeLast.getHeating_fee()} ];
	var pieData3= [${thirdLast.getGeneral_fee()}, ${thirdLast.getSecurity_fee()}, ${thirdLast.getCleaning_fee()}, ${thirdLast.getFumigation_fee()},
		${thirdLast.getLift_maintenance_fee()}, ${thirdLast.getElectricity_fee()}, ${thirdLast.getWater_fee()}, ${thirdLast.getHeating_fee()} ];
	var pieData4 = [${fourthLast.getGeneral_fee()}, ${fourthLast.getSecurity_fee()}, ${fourthLast.getCleaning_fee()}, ${fourthLast.getFumigation_fee()},
		${fourthLast.getLift_maintenance_fee()}, ${fourthLast.getElectricity_fee()}, ${fourthLast.getWater_fee()}, ${fourthLast.getHeating_fee()} ];
	var pieData5 = [${fifthLast.getGeneral_fee()}, ${fifthLast.getSecurity_fee()}, ${fifthLast.getCleaning_fee()}, ${fifthLast.getFumigation_fee()},
		${fifthLast.getLift_maintenance_fee()}, ${fifthLast.getElectricity_fee()}, ${fifthLast.getWater_fee()}, ${fifthLast.getHeating_fee()} ];
	var pieData6 = [${sixthLast.getGeneral_fee()}, ${sixthLast.getSecurity_fee()}, ${sixthLast.getCleaning_fee()}, ${sixthLast.getFumigation_fee()},
		${sixthLast.getLift_maintenance_fee()}, ${sixthLast.getElectricity_fee()}, ${sixthLast.getWater_fee()}, ${sixthLast.getHeating_fee()} ];
	
	
	pieData1.push;
	pieData2.push;
	pieData3.push;
	pieData4.push;
	pieData5.push;
	pieData6.push;
</script>
</head>

<body id="page-top">

	<!-- Page Wrapper -->
	<div id="wrapper">

		<!-- Sidebar -->
		<%@ include file="userMenu.jsp" %>
				<!-- Begin Page Content -->
				<div class="container-fluid">

					<!-- Page Heading -->
					<div
						class="d-sm-flex align-items-center justify-content-between mb-4">
						<h1 class="h3 mb-0 text-gray-800">${member.name }님 환영합니다</h1>
						<a href="#"
							class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
							class="fas fa-download fa-sm text-white-50"></i> Generate Report</a>
					</div>



					<!-- Content Row -->

					<div class="row">

						<!-- 관리비조회 -->
						<div class="col-xl-7 col-lg-7">
							<div class="card shadow mb-4">
								<!-- Card Header - Dropdown -->
								<div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
									<h6 class="m-0 font-weight-bold text-primary">관리비 추이 </h6>
								</div>
								
								
						<!-- Card Body1 -->
						<div class="card" style="margin: 30px 115px 20px 115px;" align="center">
						  <div class="card-body">
						  <img src="/Aptogether/css/image/receipt.png" alt="관리비" style="width: 100px; height: 100px; float: left;">
						    <c:choose>
								<c:when test="${last eq null}">
									<h5 class="card-title">고지된 관리비가 없습니다.</h5>
									<h3 class="card-text">
										<b id="thisMonthFee"> 현재 관리비가 존재하지 않습니다. </b>
									</h3>
								</c:when>
								<c:otherwise>
									<h5 class="card-title">
										<fmt:parseDate var="date" value="${last.pay_date}"
											pattern="yyyy-MM-dd HH:mm:ss" />
										<fmt:formatDate value="${date }" pattern="yyyy년 MM월 관리비 " />
									</h5>
									<h3 class="card-text">
										<b> ${ last.getTotalValue()}원</b>
									</h3>
									<p class="card-text">
										<small class="text-muted">전월대비
											<c:choose>
												<c:when test="${last.getTotalValue() gt beforeLast.getTotalValue()}">
													<img src="/Aptogether/css/image/up.png" alt="up" 
													style="width: 20px;height: 20px;padding-bottom: 3px;">
													${last.getTotalValue() - beforeLast.getTotalValue()}원 증가
												</c:when>
												<c:when test="${last.getTotalValue() lt beforeLast.getTotalValue()}">
													<img src="/Aptogether/css/image/down.png" alt="down"
													style="width: 20px;height: 20px;padding-bottom: 3px;">
											${beforeLast.getTotalValue() - last.getTotalValue()}원 감소
												</c:when>
												<c:when test="${last.getTotalValue() eq beforeLast.getTotalValue()}">
													<img src="/Aptogether/css/image/equal.png" alt="down"
													style="width: 20px;height: 20px;padding-bottom: 3px;">
												관리비 부과액이 같습니다(증감액 0원)
												</c:when>
											</c:choose>
										</small>
									</p>
								</c:otherwise>
							</c:choose>
						  </div>
						</div>
								<!-- Card Body2 -->
								<div class="card-body">
									<div class="chart-area">
										<canvas id="myAreaChart"></canvas>
									</div>
								</div>
							</div>
						</div>
						
						<!-- 관리비 상세내역 -->
						<div class="col-xl-5 col-lg-5">
							<div class="card shadow mb-4">
							
								<!-- Card Header - Dropdown -->
								<div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
									<h6 class="m-0 font-weight-bold text-primary">관리비 상세내역</h6>
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
												<c:choose>
													<c:when test="${empty last }">
													현재 부과된 관리비가 존재하지 않습니다. 
												</c:when>
													<c:otherwise>
												<table class="table">
													<tr>
														<td>당월부과액</td>
														<td>${ last.getTotalValue() }원</td>
													</tr>
													<tr>
														<td>미납액</td>
														<td></td>																	
													</tr>
													<tr>
														<td>미납연체료</td>
														<td></td>																	
													</tr>
													<tr>
														<td>납기내금액</td>
														<td></td>																	
													</tr>
													<tr>
														<td>납기후연체료</td>	
														<td></td>																				
													</tr>
												</table>
													<p class="card-text">
														<small class="text-muted">
															<fmt:parseDate var="date" value="${last.pay_date}"
																	pattern="yyyy-MM-dd HH:mm:ss" />
																<fmt:formatDate value="${date }" pattern="납부기한 : yyyy년 MM월 dd일 까지 " />
														</small>
													</p>
													</c:otherwise>
												</c:choose>
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
													<c:choose>
														<c:when test="${not empty beforeLast}">
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
																	<td>${ beforeLast.getGeneral_fee() }원</td>
																	<td>
																		<c:choose>
																			<c:when test="${last.getGeneral_fee() gt beforeLast.getGeneral_fee()}">
																				<img src="/Aptogether/css/image/up.png" alt="up" 
																				style="width: 20px;height: 20px;padding-bottom: 3px;">
																			</c:when>
																			<c:when test="${last.getGeneral_fee() lt beforeLast.getGeneral_fee()}">
																				<img src="/Aptogether/css/image/down.png" alt="down"
																				style="width: 20px;height: 20px;padding-bottom: 3px;">
																			</c:when>
																			<c:when test="${last.getGeneral_fee() eq beforeLast.getGeneral_fee()}">
																				<img src="/Aptogether/css/image/equal.png" alt="down"
																				style="width: 20px;height: 20px;padding-bottom: 3px;">
																			</c:when>
																		</c:choose>
																	${ last.getGeneral_fee() }원
																	</td>
																</tr>
																<tr>
																	<td>경비비</td>
																	<td>${ beforeLast.getSecurity_fee()}원</td>
																	<td>
																		<c:choose>
																			<c:when test="${last.getSecurity_fee() gt beforeLast.getSecurity_fee()}">
																				<img src="/Aptogether/css/image/up.png" alt="up" 
																				style="width: 20px;height: 20px;padding-bottom: 3px;">
																			</c:when>
																			<c:when test="${last.getSecurity_fee() lt beforeLast.getSecurity_fee()}">
																				<img src="/Aptogether/css/image/down.png" alt="down"
																				style="width: 20px;height: 20px;padding-bottom: 3px;">
																			</c:when>
																			<c:when test="${last.getSecurity_fee() eq beforeLast.getSecurity_fee()}">
																				<img src="/Aptogether/css/image/equal.png" alt="down"
																				style="width: 20px;height: 20px;padding-bottom: 3px;">
																			</c:when>
																		</c:choose>																	
																	${ last.getSecurity_fee()}원
																	</td>
																</tr>
																<tr>
																	<td>청소비</td>
																	<td>${ beforeLast.getCleaning_fee() }원</td>
																	<td>
																		<c:choose>
																			<c:when test="${last.getCleaning_fee() gt beforeLast.getCleaning_fee()}">
																				<img src="/Aptogether/css/image/up.png" alt="up" 
																				style="width: 20px;height: 20px;padding-bottom: 3px;">
																			</c:when>
																			<c:when test="${last.getCleaning_fee() lt beforeLast.getCleaning_fee()}">
																				<img src="/Aptogether/css/image/down.png" alt="down"
																				style="width: 20px;height: 20px;padding-bottom: 3px;">
																			</c:when>
																			<c:when test="${last.getCleaning_fee() eq beforeLast.getCleaning_fee()}">
																				<img src="/Aptogether/css/image/equal.png" alt="down"
																				style="width: 20px;height: 20px;padding-bottom: 3px;">
																			</c:when>	
																		</c:choose>																
																	${ last.getCleaning_fee() }원
																	</td>
																</tr>
																<tr>
																	<td>소독비</td>
																	<td>${beforeLast.getFumigation_fee()}원</td>
																	<td>
																		<c:choose>
																			<c:when test="${last.getFumigation_fee() gt beforeLast.getFumigation_fee()}">
																				<img src="/Aptogether/css/image/up.png" alt="up" 
																				style="width: 20px;height: 20px;padding-bottom: 3px;">
																			</c:when>
																			<c:when test="${last.getFumigation_fee() lt beforeLast.getFumigation_fee()}">
																				<img src="/Aptogether/css/image/down.png" alt="down"
																				style="width: 20px;height: 20px;padding-bottom: 3px;">
																			</c:when>
																			<c:when test="${last.getFumigation_fee() eq beforeLast.getFumigation_fee()}">
																				<img src="/Aptogether/css/image/equal.png" alt="down"
																				style="width: 20px;height: 20px;padding-bottom: 3px;">
																			</c:when>	
																		</c:choose>																	
																	${last.getFumigation_fee()}원
																	</td>
																</tr>
																<tr>
																	<td>승강비유지비</td>
																	<td>${beforeLast.getLift_maintenance_fee()}원</td>
																	<td>
																		<c:choose>
																			<c:when test="${last.getLift_maintenance_fee() gt beforeLast.getLift_maintenance_fee()}">
																				<img src="/Aptogether/css/image/up.png" alt="up" 
																				style="width: 20px;height: 20px;padding-bottom: 3px;">
																			</c:when>
																			<c:when test="${last.getLift_maintenance_fee() lt beforeLast.getLift_maintenance_fee()}">
																				<img src="/Aptogether/css/image/down.png" alt="down"
																				style="width: 20px;height: 20px;padding-bottom: 3px;">
																			</c:when>
																			<c:when test="${last.getLift_maintenance_fee() eq beforeLast.getLift_maintenance_fee()}">
																				<img src="/Aptogether/css/image/equal.png" alt="down"
																				style="width: 20px;height: 20px;padding-bottom: 3px;">
																			</c:when>	
																		</c:choose>																		
																	${last.getLift_maintenance_fee()}원
																	</td>
																</tr>
																<tr>
																	<td>전기세</td>
																	<td>${beforeLast.getElectricity_fee()}원</td>
																	<td>
																		<c:choose>
																			<c:when test="${last.getElectricity_fee() gt beforeLast.getElectricity_fee()}">
																				<img src="/Aptogether/css/image/up.png" alt="up" 
																				style="width: 20px;height: 20px;padding-bottom: 3px;">
																			</c:when>
																			<c:when test="${last.getElectricity_fee() lt beforeLast.getElectricity_fee()}">
																				<img src="/Aptogether/css/image/down.png" alt="down"
																				style="width: 20px;height: 20px;padding-bottom: 3px;">
																			</c:when>
																			<c:when test="${last.getElectricity_fee() eq beforeLast.getElectricity_fee()}">
																				<img src="/Aptogether/css/image/equal.png" alt="down"
																				style="width: 20px;height: 20px;padding-bottom: 3px;">
																			</c:when>	
																		</c:choose>																		
																	${last.getElectricity_fee()}원
																	</td>
																</tr>
																<tr>
																	<td>수도세</td>
																	<td>${beforeLast.getWater_fee()}원</td>
																	<td>
																		<c:choose>
																			<c:when test="${last.getWater_fee() gt beforeLast.getWater_fee()}">
																				<img src="/Aptogether/css/image/up.png" alt="up" 
																				style="width: 20px;height: 20px;padding-bottom: 3px;">
																			</c:when>
																			<c:when test="${last.getWater_fee() lt beforeLast.getWater_fee()}">
																				<img src="/Aptogether/css/image/down.png" alt="down"
																				style="width: 20px;height: 20px;padding-bottom: 3px;">
																			</c:when>
																			<c:when test="${last.getWater_fee() eq beforeLast.getWater_fee()}">
																				<img src="/Aptogether/css/image/equal.png" alt="down"
																				style="width: 20px;height: 20px;padding-bottom: 3px;">
																			</c:when>	
																		</c:choose>																			
																	${last.getWater_fee()}원
																	</td>
																</tr>
																<tr>
																	<td>난방비</td>
																	<td>${beforeLast.getHeating_fee()}원</td>
																	<td>
																		<c:choose>
																			<c:when test="${last.getHeating_fee() gt beforeLast.getHeating_fee()}">
																				<img src="/Aptogether/css/image/up.png" alt="up" 
																				style="width: 20px;height: 20px;padding-bottom: 3px;">
																			</c:when>
																			<c:when test="${last.getHeating_fee() lt beforeLast.getHeating_fee()}">
																				<img src="/Aptogether/css/image/down.png" alt="down"
																				style="width: 20px;height: 20px;padding-bottom: 3px;">
																			</c:when>
																			<c:when test="${last.getHeating_fee() eq beforeLast.getHeating_fee()}">
																				<img src="/Aptogether/css/image/equal.png" alt="down"
																				style="width: 20px;height: 20px;padding-bottom: 3px;">
																			</c:when>	
																		</c:choose>																		
																	${last.getHeating_fee()}원
																	</td>
																</tr>
															</tbody>

														</c:when>

														<c:when test="${ not empty last and empty beforeLast}">
															<thead>
																<tr>
																	<th scope="row">항목</th>
																	<th scope="row">당월</th>
																</tr>
															</thead>
															<tbody>
																<tr>
																	<td>일반관리비</td>
																	<td>${last.getGeneral_fee()}원</td>
																</tr>
																<tr>
																	<td>경비비</td>
																	<td>${last.getSecurity_fee()}원</td>
																</tr>
																<tr>
																	<td>청소비</td>
																	<td>${last.getCleaning_fee()}원</td>
																</tr>
																<tr>
																	<td>소독비</td>
																	<td>${last.getFumigation_fee()}원</td>
																</tr>
																<tr>
																	<td>승강비유지비</td>
																	<td>${last.getLift_maintenance_fee()}원</td>
																</tr>
																<tr>
																	<td>전기세</td>
																	<td>${last.getElectricity_fee()}원</td>
																</tr>
																<tr>
																	<td>수도세</td>
																	<td>${last.getWater_fee()}원</td>
																</tr>
																<tr>
																	<td>난방비</td>
																	<td>${last.getHeating_fee()}원</td>
																</tr>
															</tbody>
														</c:when>

														<c:otherwise>
														관리비 데이터가 존재하지 않습니다.
													</c:otherwise>

													</c:choose>

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
										<div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
											<div class="card-body">
												<table class="table">
													<thead>
														<th scope="row">월별</th>
														<th scope="row">관리비 납입액</th>
														<th scope="row">차트보기</th>
													</thead>
													<tbody>
														<tr>
															<td>
																<fmt:parseDate var="date" value="${last.pay_date}" pattern="yyyy-MM-dd HH:mm:ss" />
																<fmt:formatDate value="${date }" pattern="yyyy년 MM월" />
															</td>
															<td>${last.getTotalValue()}원</td>
															<td>
																<!-- Button trigger modal -->
																<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal1">
																  상세보기
																</button>
																
																<!-- Modal -->
																<div class="modal fade" id="exampleModal1" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
																  <div class="modal-dialog" role="document">
																    <div class="modal-content">
																      <div class="modal-header">
																        <h5 class="modal-title" id="exampleModalLabel">관리비 차트 상세보기</h5>
																        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
																          <span aria-hidden="true">&times;</span>
																        </button>
																      </div>
																      <div class="modal-body">
																		<div class="chart-pie pt-4 pb-2">
																			<canvas id="lastPieChart"></canvas>
																		</div>
																		<div class="mt-4 text-center small">
																			<span class="mr-2"> <i class="fas fa-circle text-primary"></i> 일반관리비</span> 
																			<span class="mr-2"> <i class="fas fa-circle text-success"></i> 경비비</span> 
																			<span class="mr-2"> <i class="fas fa-circle" style="color: #ccce26"></i>청소비</span>
																			<span class="mr-2"> <i class="fas fa-circle" style="color: #d2b9e3"></i>소독비</span><br>
																			<span class="mr-2"> <i class="fas fa-circle" style="color: #ff9232"></i>승강기유지비</span>
																			<span class="mr-2"> <i class="fas fa-circle text-warning" ></i>전기세</span>
																			<span class="mr-2"> <i class="fas fa-circle text-info"></i>수도세</span>
																			<span class="mr-2"> <i class="fas fa-circle text-danger"></i>난방비</span>
																		</div>
																      </div>
																      <div class="modal-footer">
																        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
																      </div>
																    </div>
																  </div>
																</div>															
															</td>
														</tr>
														<tr>
															<td>
																<fmt:parseDate var="date" value="${beforeLast.pay_date}" pattern="yyyy-MM-dd HH:mm:ss" />
																<fmt:formatDate value="${date }" pattern="yyyy년 MM월" />															
															</td>
															<td>${beforeLast.getTotalValue()}원</td>
															<td>
																<!-- Button trigger modal -->
																<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal2">
																  상세보기
																</button>
																
																<!-- Modal -->
																<div class="modal fade" id="exampleModal2" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
																  <div class="modal-dialog" role="document">
																    <div class="modal-content">
																      <div class="modal-header">
																        <h5 class="modal-title" id="exampleModalLabel">관리비 차트 상세보기</h5>
																        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
																          <span aria-hidden="true">&times;</span>
																        </button>
																      </div>
																      <div class="modal-body">
																		<div class="chart-pie pt-4 pb-2">
																			<canvas id="beforeLastPieChart"></canvas>
																		</div>
																		<div class="mt-4 text-center small">
																			<span class="mr-2"> <i class="fas fa-circle text-primary"></i> 일반관리비</span> 
																			<span class="mr-2"> <i class="fas fa-circle text-success"></i> 경비비</span> 
																			<span class="mr-2"> <i class="fas fa-circle" style="color: #ccce26"></i>청소비</span>
																			<span class="mr-2"> <i class="fas fa-circle" style="color: #d2b9e3"></i>소독비</span><br>
																			<span class="mr-2"> <i class="fas fa-circle" style="color: #ff9232"></i>승강기유지비</span>
																			<span class="mr-2"> <i class="fas fa-circle text-warning" ></i>전기세</span>
																			<span class="mr-2"> <i class="fas fa-circle text-info"></i>수도세</span>
																			<span class="mr-2"> <i class="fas fa-circle text-danger"></i>난방비</span>
																		</div>
																      </div>
																      <div class="modal-footer">
																        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
																      </div>
																    </div>
																  </div>
																</div>															
															</td>
														</tr>
														<tr>
															<td>
																<fmt:parseDate var="date" value="${thirdLast.pay_date}" pattern="yyyy-MM-dd HH:mm:ss" />
																<fmt:formatDate value="${date }" pattern="yyyy년 MM월" />															
															</td>
															<td>${thirdLast.getTotalValue()}원</td>
															<td>
																<!-- Button trigger modal -->
																<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal3">
																  상세보기
																</button>
																
																<!-- Modal -->
																<div class="modal fade" id="exampleModal3" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
																  <div class="modal-dialog" role="document">
																    <div class="modal-content">
																      <div class="modal-header">
																        <h5 class="modal-title" id="exampleModalLabel">관리비 차트 상세보기</h5>
																        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
																          <span aria-hidden="true">&times;</span>
																        </button>
																      </div>
																      <div class="modal-body">
																		<div class="chart-pie pt-4 pb-2">
																			<canvas id="thirdLastPieChart"></canvas>
																		</div>
																		<div class="mt-4 text-center small">
																			<span class="mr-2"> <i class="fas fa-circle text-primary"></i> 일반관리비</span> 
																			<span class="mr-2"> <i class="fas fa-circle text-success"></i> 경비비</span> 
																			<span class="mr-2"> <i class="fas fa-circle" style="color: #ccce26"></i>청소비</span>
																			<span class="mr-2"> <i class="fas fa-circle" style="color: #d2b9e3"></i>소독비</span><br>
																			<span class="mr-2"> <i class="fas fa-circle" style="color: #ff9232"></i>승강기유지비</span>
																			<span class="mr-2"> <i class="fas fa-circle text-warning" ></i>전기세</span>
																			<span class="mr-2"> <i class="fas fa-circle text-info"></i>수도세</span>
																			<span class="mr-2"> <i class="fas fa-circle text-danger"></i>난방비</span>
																		</div>
																      </div>
																      <div class="modal-footer">
																        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
																      </div>
																    </div>
																  </div>
																</div>															
															</td>
														</tr>
														<tr>
															<td>
																<fmt:parseDate var="date" value="${fourthLast.pay_date}" pattern="yyyy-MM-dd HH:mm:ss" />
																<fmt:formatDate value="${date }" pattern="yyyy년 MM월" />															
															</td>
															<td>${fourthLast.getTotalValue()}원</td>
															<td>
																<!-- Button trigger modal -->
																<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal4">
																  상세보기
																</button>
																
																<!-- Modal -->
																<div class="modal fade" id="exampleModal4" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
																  <div class="modal-dialog" role="document">
																    <div class="modal-content">
																      <div class="modal-header">
																        <h5 class="modal-title" id="exampleModalLabel">관리비 차트 상세보기</h5>
																        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
																          <span aria-hidden="true">&times;</span>
																        </button>
																      </div>
																      <div class="modal-body">
																		<div class="chart-pie pt-4 pb-2">
																			<canvas id="fourthLastPieChart"></canvas>
																		</div>
																		<div class="mt-4 text-center small">
																			<span class="mr-2"> <i class="fas fa-circle text-primary"></i> 일반관리비</span> 
																			<span class="mr-2"> <i class="fas fa-circle text-success"></i> 경비비</span> 
																			<span class="mr-2"> <i class="fas fa-circle" style="color: #ccce26"></i>청소비</span>
																			<span class="mr-2"> <i class="fas fa-circle" style="color: #d2b9e3"></i>소독비</span><br>
																			<span class="mr-2"> <i class="fas fa-circle" style="color: #ff9232"></i>승강기유지비</span>
																			<span class="mr-2"> <i class="fas fa-circle text-warning" ></i>전기세</span>
																			<span class="mr-2"> <i class="fas fa-circle text-info"></i>수도세</span>
																			<span class="mr-2"> <i class="fas fa-circle text-danger"></i>난방비</span>
																		</div>
																      </div>
																      <div class="modal-footer">
																        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
																      </div>
																    </div>
																  </div>
																</div>															
															</td>
														</tr>
														<tr>
															<td>
																<fmt:parseDate var="date" value="${fifthLast.pay_date}" pattern="yyyy-MM-dd HH:mm:ss" />
																<fmt:formatDate value="${date }" pattern="yyyy년 MM월" />															
															</td>
															<td>${fifthLast.getTotalValue()}원</td>
															<td>
																<!-- Button trigger modal -->
																<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal5">
																  상세보기
																</button>
																
																<!-- Modal -->
																<div class="modal fade" id="exampleModal5" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
																  <div class="modal-dialog" role="document">
																    <div class="modal-content">
																      <div class="modal-header">
																        <h5 class="modal-title" id="exampleModalLabel">관리비 차트 상세보기</h5>
																        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
																          <span aria-hidden="true">&times;</span>
																        </button>
																      </div>
																      <div class="modal-body">
																		<div class="chart-pie pt-4 pb-2">
																			<canvas id="fifthLastPieChart"></canvas>
																		</div>
																		<div class="mt-4 text-center small">
																			<span class="mr-2"> <i class="fas fa-circle text-primary"></i> 일반관리비</span> 
																			<span class="mr-2"> <i class="fas fa-circle text-success"></i> 경비비</span> 
																			<span class="mr-2"> <i class="fas fa-circle" style="color: #ccce26"></i>청소비</span>
																			<span class="mr-2"> <i class="fas fa-circle" style="color: #d2b9e3"></i>소독비</span><br>
																			<span class="mr-2"> <i class="fas fa-circle" style="color: #ff9232"></i>승강기유지비</span>
																			<span class="mr-2"> <i class="fas fa-circle text-warning" ></i>전기세</span>
																			<span class="mr-2"> <i class="fas fa-circle text-info"></i>수도세</span>
																			<span class="mr-2"> <i class="fas fa-circle text-danger"></i>난방비</span>
																		</div>
																      </div>
																      <div class="modal-footer">
																        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
																      </div>
																    </div>
																  </div>
																</div>															
															</td>
														</tr>
														<tr>
															<td>
																<fmt:parseDate var="date" value="${sixthLast.pay_date}" pattern="yyyy-MM-dd HH:mm:ss" />
																<fmt:formatDate value="${date }" pattern="yyyy년 MM월" />															
															</td>
															<td>${sixthLast.getTotalValue()}원</td>
															<td>
																<!-- Button trigger modal -->
																<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal6">
																  상세보기
																</button>
																
																<!-- Modal -->
																<div class="modal fade" id="exampleModal6" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
																  <div class="modal-dialog" role="document">
																    <div class="modal-content">
																      <div class="modal-header">
																        <h5 class="modal-title" id="exampleModalLabel">관리비 차트 상세보기</h5>
																        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
																          <span aria-hidden="true">&times;</span>
																        </button>
																      </div>
																      <div class="modal-body">
																		<div class="chart-pie pt-4 pb-2">
																			<canvas id="sixthLastPieChart"></canvas>
																		</div>
																		<div class="mt-4 text-center small">
																			<span class="mr-2"> <i class="fas fa-circle text-primary"></i> 일반관리비</span> 
																			<span class="mr-2"> <i class="fas fa-circle text-success"></i> 경비비</span> 
																			<span class="mr-2"> <i class="fas fa-circle" style="color: #ccce26"></i>청소비</span>
																			<span class="mr-2"> <i class="fas fa-circle" style="color: #d2b9e3"></i>소독비</span><br>
																			<span class="mr-2"> <i class="fas fa-circle" style="color: #ff9232"></i>승강기유지비</span>
																			<span class="mr-2"> <i class="fas fa-circle text-warning" ></i>전기세</span>
																			<span class="mr-2"> <i class="fas fa-circle text-info"></i>수도세</span>
																			<span class="mr-2"> <i class="fas fa-circle text-danger"></i>난방비</span>
																		</div>
																      </div>
																      <div class="modal-footer">
																        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
																      </div>
																    </div>
																  </div>
																</div>															
															</td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
									</div>
								</div>
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
						<span>Copyright &copy; Your Website 2020</span>
					</div>
				</div>
			</footer>
			<!-- End of Footer -->

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
	<script src="/Aptogether/js/demo/chart-area-demo.js"></script>
	<script src="/Aptogether/js/demo/chart-pie-demo.js"></script>
	<script src="/Aptogether/vendor/datatables/jquery.dataTables.min.js"></script>
	<script
		src="/Aptogether/vendor/datatables/dataTables.bootstrap4.min.js"></script>
	<script src="/Aptogether/js/demo/datatables-demo.js"></script>

</body>

</html>
