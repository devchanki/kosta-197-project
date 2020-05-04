<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html class="no-js" lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="stylesheet" href="/Aptogether/dist/css/complaint.css">
<script src="./vendor/modernizr.custom.min.js"></script>
<script src="./vendor/jquery-1.10.2.min.js"></script>
<script src="./vendor/jquery-ui-1.10.3.custom.min.js"></script>
<meta http-equiv="content-script-type" content="text/javascript">



<title>접수 완료</title>
</head>
<body>
	<p id ="title">접수가 완료되었습니다!</p>
	<div id = "icon"><img src ="/Aptogether/dist/img/runner.png"></img></div>
	<div id = "guide">민원 상태 확인은 나의 민원에서 가능합니다.</div>
	<div class = "button" style="text-align: center" >
	<input type = "button" onclick="location.href='Compboard.do'"  value="나의 민원 가기">
	</div>
</body>
</html>