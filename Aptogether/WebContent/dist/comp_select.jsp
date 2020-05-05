<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
   <head>
      <meta charset="UTF-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <link rel="stylesheet" href="./css/comp_select.css">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
      <link rel="stylesheet" href="https://cdn.rawgit.com/tonystar/bootstrap-float-label/v4.0.2/bootstrap-float-label.min.css"/>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
      <script src="./vendor/modernizr.custom.min.js"></script>
      <script src="./vendor/jquery-1.10.2.min.js"></script>
      <script src="./vendor/jquery-ui-1.10.3.custom.min.js"></script>
      <script src="./js/imagebox.js"></script>
      <script></script>
   </head>
   <body>
           <div id="modal">
            <div class="row">
               <div class="col-lg-6 offset-lg-3 col-sm-6 offset-sm-3 col-12">
                  <form class="card w-100 card-block bg-faded" action = "../apto/insertAction.do" method="post" class="form-horizontal"
                     enctype="multipart/form-data">
                     <legend class="m-b-1 text-center text-info"> <strong> Contact us </strong></legend>
                     <div class="form-group input-group">
                        <span class="has-float-label">
                        <input id="Title" name="Title" type="text" placeholder="*제목" class="form-control">
                        <label for="first">제목</label>
                        </span>
                     </div>
                     <div class="form-group input-group">
                        <span class="has-float-label">
                        <input id="Email" name="Email" type="text" placeholder="이메일" class="form-control">
                        <label for="email">이메일</label>
                        </span>
                     </div>
                     <div class="form-group input-group">
                        <span class="has-float-label">
                        <input id="Tel" name="Tel" type="text" placeholder="연락처" class="form-control">
                        <label for="contact">연락처</label>
                        </span>
                     </div>
                     <div class="form-group input-group">
                        <span class="has-float-label">
                        <textarea class="form-control" id="Content" name="Content" placeholder="*상세 내용을 작성해주세요." rows="7"></textarea>
                        <label for="message">내용</label>
                        </span>
                     </div>
                     <div class="form-group input-group">
                        <span class="has-float-label">
                        <input id="Fname" name="Fname" type="file" placeholder="파일" class="form-control">
                        <label for="contact">파일 첨부</label>
                        </span>
                     </div>
                     <div class="form-content">
                        <div class="col-md-12 text-center">
                           <input type="button" class="btn btn-primary btn-lg" id="cancel" value="취소"> 
                           <input type="submit" class="btn btn-primary btn-lg" value="작성하기"/>
                        </div>
                     </div>
                  </form>
               </div>
            </div>
         </div>
      <div id = "maintitle">민원을 선택해주세요.</div>
      <hr align="center" style="border: solid 5px #3300FF; width: 30%;">
      <div id="quickmain">
         <div class="quickline1 container-fluid">
            <div class="quick1 ">
               <a>
                  <img src="./img/noise.png">
                  <dl>
                     <dt>층간소음</dt>
                  </dl>
               </a>
            </div>
            <div class="quick1">
               <img src="./img/parking.png"></a>
               <dl>
                  <dt>주차문제</dt>
               </dl>
            </div>
         </div>
         <div class="quickline2 container-fluid">
            <div class="quick2">
               <a style="text-decoration:none">
               <img src="./img/trash.png"></a>
               <dl>
                  <dt>쓰레기 무단투기</dt>
               </dl>
            </div>
            <div class="quick2">
               <img src="./img/choice.png">
               <dt>기타</dt>
               </dl>
            </div>
         </div>
      </div>
      <script>
         var matches = document.querySelectorAll("div.quick1, div.quick2, #cancel");
         	for(var i = 0; i < matches.length; i++){
         		matches[i].onclick = function(){
         			$("#modal").toggle();
         		}
         	}
      </script>
   </body>
</html>