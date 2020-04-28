<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html class="no-js" lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="stylesheet" href="./css/comp_select.css">
<script src="./vendor/modernizr.custom.min.js"></script>
<script src="./vendor/jquery-1.10.2.min.js"></script>
<script src="./vendor/jquery-ui-1.10.3.custom.min.js"></script>
<script src="./js/imagebox.js"></script>
<script>

</script>
</head>
<body>
	<div id = "maintitle">민원을 선택해주세요.</div>
	<hr align="center" style="border: solid 5px #3300FF; width: 30%;">
	
	<div id="quickmain">
	<div id="modal">
    <div class="row">
        <div class="col-md-12">
            <div class="well well-sm">
                <form action = "../apto/insertAction.do" method="post" class="form-horizontal">
                    <fieldset>
                        <legend class="text-center header">Contact us</legend>
						<div class="mustdo">상세 내용작성(*는 필수 입력 사항입니다.)</div>
                        <div class="form-group">
                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-user bigicon"></i></span>
                            <div class="createtitle">
                                <input id="Title" name="Title" type="text" placeholder="*제목" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-user bigicon"></i></span>
                            <div class="createemail">
                                <input id="Email" name="Email" type="text" placeholder="이메일" class="form-control">
                            </div>
                        </div>

                        <div class="form-group">
                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-envelope-o bigicon"></i></span>
                            <div class="createtel">
                                <input id="Tel" name="Tel" type="text" placeholder="연락처" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-pencil-square-o bigicon"></i></span>
                            <div class="createcontent">
                                <textarea class="form-control" id="Content" name="Content" placeholder="*상세 내용을 작성해주세요." rows="7"></textarea>
                            </div>
                        </div>

                        <div class="form-content">
                            <div class="col-md-12 text-center">
                            	<button type="button" >파일 첨부</button>
                                <button type="submit" class="btn btn-primary btn-lg"
                           >전 송</button>
                            </div>
                        </div>
                    </fieldset>
                </form>
            </div>
        </div>
    </div>
</div>
			<div id="quickline1"> <span class="quick1">
			<a style="text-decoration:none"> <img src="./img/noise.png">
						<dl>
						<dt>층간소음</dt>
					</dl>
					</a>	
			</span> <span class="quick1"> 
			<img src="./img/parking.png"></a>
					<dl>
						<dt>주차문제</dt>
						
					</dl>
			</span>
			</div>
			<div id="quickline2"> 
			<span class="quick2">
			 <a style="text-decoration:none">
			<img src="./img/trash.png"></a>
					<dl>
						<dt>쓰레기 무단투기</dt>
					</dl>
			</span> <span class="quick2">
			<img src="./img/choice.png">
						<dt>기타</dt>
					
					</dl>
			</span>
			</div>
		</div>
	
	

<script>
/* function click_button(var a) {
	$("#modal").toggle();
} */
var matches = document.querySelectorAll("span.quick1, span.quick2");
	for(var i = 0; i < matches.length; i++){
		matches[i].onclick = function(){
			$("#modal").toggle();
		}
	}

</script>

</body>
</html>