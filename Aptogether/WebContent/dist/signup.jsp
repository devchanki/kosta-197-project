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
<title>Apartogether - 회원가입</title>
<link href="css/styles.css" rel="stylesheet" />
<style type="text/css">
.modal-mine {
	display: none;
	position: fixed;
	width: 100%;
	height: 100%;
	z-index: 9999;
	margin-top: 100px;
}

.modal-content {
	margin: auto;
	padding: 30px 20px;
	box-sizing: border-box;
}

.apt-list-box {
	margin-bottom: 20px;
}
.container{
	padding: 30px 0 50px 0;
}
.first-radio{
	margin-right: 20px;
	margin-left: 10px;
}
.search-button{
	margin-top: 10px;
	width: 100%;
}
</style>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/js/all.min.js"
	crossorigin="anonymous"></script>
</head>

<body class="bg-primary">
	<div class="modal-mine">
		<div class="modal-content col-xl-6">
			<div class="input-group mb-3">
				<input type="text" id="modalAptName" class="form-control"
					placeholder="Recipient's username"
					aria-label="Recipient's username" aria-describedby="basic-addon2">
				<div class="input-group-append">
					<button class="btn btn-outline-secondary" type="button"
						onclick="searchApt()">아파트 검색하기</button>
				</div>
			</div>
			<div class="apt-list-box">
				<div class="list-group"></div>

			</div>
			<input type="button" onclick="doAction()" value="선택하기" /> <input
				type="button" onclick="closeModal()" value="닫기 ">
		</div>
	</div>
	<div id="layoutAuthentication">
		<div id="layoutAuthentication_content">
			<main>
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-lg-7">
						<div class="card shadow-lg border-0 rounded-lg mt-5">
							<div class="card-header">
								<h3 class="text-center font-weight-light my-4">회원가입</h3>
							</div>
							<div class="card-body">
								<form action="/Aptogether/member/join.do">
									<div class="form-row">

										<div class="col-md-12">
											<label class="small mb-1" for="inputFirstName">이름</label><input
												class="form-control py-4" id="name" type="text"
												placeholder="이름을 입력하세요" />
										</div>


									</div>
									<div class="form-group">
										<label class="small mb-1" for="aptName">아파트 이름</label><input
											class="form-control py-4" id="aptName" type="text"
											aria-describedby="aptName"
											placeholder="아파트 찾기 버튼을 이용해 아파트를 고르세요" readonly />
										<button class="btn search-button btn-dark"
												id="modal-toggle-button">아파트 찾기</button>
									</div>
									<div class="form-group">
										<input class="form-control py-4" id="aptSeq" name="aptSeq"
											type="hidden" />
									</div>
									<div class="form-group">
										<label class="small mb-1" for="inputEmailAddress">Email</label><input
											class="form-control py-4" name="email" id="inputEmailAddress"
											type="email" aria-describedby="emailHelp"
											placeholder="이메일을 입력해주세요!" />
									</div>
									<!-- 			<div class="form-group">
										<label class="small mb-1" for="inputEmailAddress">Email</label><input
											class="form-control py-4" id="inputEmailAddress" type="email"
											aria-describedby="emailHelp"
											placeholder="Enter email address" />
									</div> -->
									<div class="form-row">
										<div class="col-md-6">
											<div class="form-group">
												<label class="small mb-1" name="password"
													for="inputPassword">비밀번호</label><input
													class="form-control py-4" name="password" id="inputPassword"
													type="password" placeholder="비밀번호" />
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label class="small mb-1" for="inputConfirmPassword">비밀번호 확인
												</label><input class="form-control py-4"
													id="inputConfirmPassword" type="password"
													placeholder="비밀번호 확인" />
											</div>
										</div>
									</div>
									<div class="form-row">
										<div class="col-md-6">
											<div class="form-group">
												<label class="small mb-1" for="inputDong">동</label><input
													name="dong" class="form-control py-4" id="inputPassword"
													type="number" placeholder="동을 입력하세요" />
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label class="small mb-1" for="inputHo">호 </label><input
													name="ho" class="form-control py-4" id="inputHo"
													type="number" placeholder="호수를 입력하세요" />
											</div>
										</div>
									</div>

									<div class="form-row">
										<div class="custom-control custom-radio first-radio">
											<input type="radio" name="type" value="0" id="jb-radio-1"
												class="custom-control-input"> <label
												class="custom-control-label" for="jb-radio-1"> 관리
												사무소 </label>
										</div>
										<div class="custom-control custom-radio">
											<input type="radio" name="type" value="1" id="jb-radio-2"
												class="custom-control-input" v> <label
												class="custom-control-label" for="jb-radio-2"> 아파트
												주민 </label>
										</div>
									</div>
							<div class="form-group mt-4 mb-0">
								<input type="submit" onclick="checkValidate()" class="btn btn-primary btn-block"
									value="회원가입">
							</div>
							</form>
						</div>
						<div class="card-footer text-center">
							<div class="small">
								<a href="register.html">로그인 하러가기</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		</main>
	</div>



	<div id="layoutAuthentication_footer">
		<footer class="py-4 bg-light mt-auto">
			<div class="container-fluid">
				<div class="d-flex align-items-center justify-content-between small">
					<div class="text-muted">Aptogether KOSTA 3조</div>
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

	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script type="text/javascript">
		function selectApt(seq, name) {
			console.log(seq, name);
			$("#aptName").val(name);
			$("#aptSeq").val(seq);
			
		}
		
		function searchApt() {
			$
					.ajax({
						url : "/Aptogether/apt/showAptList",
						type : "GET",
						dataType : "text",
						data : {
							"keyword" : $('#modalAptName').val()
						},
						success : function(data) {
							data = JSON.parse(data);
							console.log(data);
							$('.apt-list-box .list-group').html('');
							for (var i = 0; i < data.length; i++) {

								$('.apt-list-box .list-group')
										.append(
												'<button type="button" class="list-group-item list-group-item-action" onclick="selectApt('
														+ data[i].apt_seq
														+ ','
														+ "'"
														+ data[i].apt_name
														+ "'"
														+ ')"'
														+ '>'
														+ data[i].apt_name
														+ '('
														+ data[i].apt_location
														+ ')' + '</button>')
							}
						}
					})
		}
		function closeModal() {
			$(".modal-mine").toggle();
		}
		$(function() {
			console.log("conssole.");
			$('#modal-toggle-button').on('click', function() {
				$(".modal-mine").toggle();
				return false;
			})
		})
	</script>

</body>
</html>
