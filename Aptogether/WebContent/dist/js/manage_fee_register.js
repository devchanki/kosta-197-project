var member_seq = $('#member_seq');
var general_fee = $('#general_fee');
var security_fee = $('#security_fee');
var cleaning_fee = $('#cleaning_fee');
var fumigation_fee = $('#fumigation_fee');
var lift_maintenance_fee = $('#lift_maintenance_fee');
var electricity_fee = $('#electricity_fee');
var water_fee = $('#water_fee');
var heating_fee = $('#heating_fee');

$(function() {
	
	createTable();
	function createTable() {
		$.ajax({
			url : "/Aptogether/Manage_Fee/showListManageFee",
			type : "GET",
			dataType : "text",
			success : function(response) {
				console.log(response);
				data = JSON.parse(response);
				console.log(response);
				 $('.fee-table').html('<tr><td>입주민번호</td><td>일반관리비</td><td>경비비</td><td>청소비</td><td>소독비</td><td>승강기유지비</td><td>전기세</td><td>수도세</td><td>난방비</td></tr>');
				for (var i = 0; i < data.length; i++) {
					$('.fee-table').append(
									'<tr>'
										+'<td>'+ data[i].member_seq + '</td>'
										+'<td>'+ data[i].general_fee + '</td>'
										+'<td>'+ data[i].security_fee + '</td>'
										+'<td>'+ data[i].cleaning_fee + '</td>'
										+'<td>'+ data[i].fumigation_fee + '</td>'
										+'<td>'+ data[i].lift_maintenance_fee + '</td>'
										+'<td>'+ data[i].electricity_fee + '</td>'
										+'<td>'+ data[i].water_fee + '</td>'
										+'<td>'+ data[i].heating_fee + '</td>'
								+ '</tr>');
								}
							}
						});
				}
	
	
	$("#memberSeq_finder").click(function() {
		$("#dialog-message").dialog({
			height : "auto",
			width : 400,
			modal : true,
			buttons : {
				등록 : function(start, end, timezone, callback) {
					console.log("등록")
					
					$.ajax({
						type : "get",
						url : "/Aptogether/Manage_Fee/findMemberSeq",
						data : {
							dong : $('#dong').val(),
							ho : $('#ho').val()
						},
						success : function(response) {
								console.log(response);
								response = JSON.parse(response);
								member_seq.val(response.member_seq);
						}
					});
					$(this).dialog("close");
					},
				취소 : function() {
					$('#dong').val('');
					$('#ho').val('');
					$(this).dialog("close");
				}
			}
		});
	});
	
	
	
	$("#manage_fee_register").on('click', function() {
		$( "#dialog-fee" ).dialog({
			  height: "auto",
			  width: 500,
		      modal: true,
		      buttons: {
		    	  등록 : function(start, end, timezone, callback) {
						$.ajax({
							type : "get",
							url : "/Aptogether/Manage_Fee/registerManageFee",
							data : {
								"member_seq" : member_seq.val(),
								"general_fee" : general_fee.val(),
								"security_fee" : security_fee.val(),
								"cleaning_fee" : cleaning_fee.val(),
								"fumigation_fee" : fumigation_fee.val(),
								"lift_maintenance_fee" : lift_maintenance_fee.val(),
								"electricity_fee" : electricity_fee.val(),
								"water_fee" : water_fee.val(),
								"heating_fee" : heating_fee.val()
							},
							success : function(data) {
							if (data == "success") {
								alert("입력에 성공하셨습니다.");
								location.reload();
							} else {
								alert("잠시후 다시 시도해주세요.");
							}
						},
						error : function(request, status, error) {
							alert("요청에 실패하였습니다. 조금 있다 다시 요청해주세요.")
						}
						});
						$(this).dialog("close");
						},
					취소 : function() {
						$(this).dialog("close");
					}
		      }
		    });
		return false;
	});
	
	
	

	
	
});
