var MQinfo = $('#MQinfo');


$(function() {
	//모달창 뜨기
		$("#checkMQ").click(function() {
			$("#findMQ-modal").modal('show');
			return false;
		});
	//입주민번호 찾기 버튼	
		$("#find_MQ").on('click', function() {
					$.ajax({
						type : "get",
						url : "/Aptogether/manageFee/findMemberSeq",
						data : {
							dong : $('#dong').val(),
							ho : $('#ho').val()
						},
						success : function(response) {
								console.log(response);
								response = JSON.parse(response);
								$('#findMQ-modal2').modal('show');
								MQinfo.val("입주민번호 " + response.member_seq + "　"+response.dong +"동  "+ response.ho+"호");
								$('#moveMFR').attr("href", "InsertManageFee.jsp?member_seq=" + response.member_seq);
										
						}
					});
					$("#findMQ-modal").modal('hide');
		});
		

		$("#cancle_MQ").on('click', function() {
			$('#dong').val('');
			$('#ho').val('');
		});
		
		$("#cancle_MQ2").on('click', function() {
			$('#dong').val('');
			$('#ho').val('');
		});
	
});
