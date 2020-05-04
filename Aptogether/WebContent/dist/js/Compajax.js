var compboard_seq = $('#compboard_seq');
var title = $('#title');
var email = $('#email');
var tel = $('#tel');
var content = $('#content');
var fname = $('#fname');
var process = $('#process');

		
	/*createTable();
	function createTable() {
		$.ajax({
			url : "/Apartogether/dist/showListcomp.do",
			type : "GET",
			dataType : "text",
			success : function(response) {
				console.log(response);	
				data = JSON.parse(response);
				console.log(response);
				for (var i = 0; i < data.length; i++) {
					$('.table').append(
									'<tr>'
										+'<td>'+ data[i].compboard_seq + '</td>'
										+'<td>'+ data[i].title + '</td>'
										+'<td>'+ data[i].tel + '</td>'
										+'<td>'+ data[i].process + '</td>'
								+ '</tr>');
								}
							}
						});
				}*/
$(function(){
	  $(document).ready(function(){
	         alert("데이터 요청!");  
	    $.ajax({    
	         url:'test02.jsp', 
	         type:'get', 
	         success : function(t){  
	                  $("<h1></h1>").text($(t).text()).appendTo("body");   
	           },
	          error : function(){
	          alert('연결실패');
	          }
	    });   
	   });
	});



