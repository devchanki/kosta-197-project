var member_seq = $('#member_seq');
var general_fee = $('#general_fee');
var security_fee = $('#security_fee');
var cleaning_fee = $('#cleaning_fee');
var fumigation_fee = $('#fumigation_fee');
var lift_maintenance_fee = $('#lift_maintenance_fee');
var electricity_fee = $('#electricity_fee');
var water_fee = $('#water_fee');
var heating_fee = $('#heating_fee');
var pay_date = $('#pay_date');



$(function() {
	
	//숫자 세자리 수 마다 콤마 붙는 정규표현식 함수
	function AmountCommas(val){
	    return val.toString().replace(/\B(?=(\d{3})+(?!\d))/g,",");
	}
	
	createTable();
	function createTable() {
		$.ajax({
			url : "/Aptogether/manageFee/showListManageFee",
			type : "GET",
			dataType : "text",
			data: {
				"member_seq" : member_seq_init
			},
			success : function(response) {
				console.log(response);
				data = JSON.parse(response);
				console.log(response);
				 $('.fee-table').html('<tr><td></td><td>일반관리비</td><td>경비비</td><td>청소비</td><td>소독비</td><td>승강기유지비</td><td>전기세</td><td>수도세</td><td>난방비</td><td>합계</td></tr>');
				for (var i = 0; i < data.length; i++) {
					$('.fee-table').append(
									'<tr>'
										+'<td>'+ moment(data[i].pay_date).format('YYYY년 MM월 관리비')+'<br>'+'<small>'+moment(data[i].pay_date).format('납부기한 : YYYY년 MM월 DD일 까지') + '</small>'+ '</td>'
										+'<td>'+ AmountCommas(data[i].general_fee) + '원'+ '</td>'
										+'<td>'+ AmountCommas(data[i].security_fee) + '원'+ '</td>'
										+'<td>'+ AmountCommas(data[i].cleaning_fee) + '원'+ '</td>'
										+'<td>'+ AmountCommas(data[i].fumigation_fee) + '원'+ '</td>'
										+'<td>'+ AmountCommas(data[i].lift_maintenance_fee) + '원'+ '</td>'
										+'<td>'+ AmountCommas(data[i].electricity_fee) + '원'+ '</td>'
										+'<td>'+ AmountCommas(data[i].water_fee) + '원'+ '</td>'
										+'<td>'+ AmountCommas(data[i].heating_fee) + '원'+ '</td>'
										+'<td>'+ AmountCommas(data[i].general_fee + data[i].security_fee + + data[i].cleaning_fee + 
								data[i].fumigation_fee + data[i].lift_maintenance_fee + data[i].electricity_fee+ data[i].water_fee + data[i].heating_fee) + '원'+ '</td>'
								+ '</tr>');
								}
							}
						});
				}
	
	
	$("#manage_fee_register").on('click', function() {
	    
					$.ajax({
						type : "get",
						url : "/Aptogether/manageFee/registerManageFee",
						data : {
							"member_seq" : member_seq.val(),
							"general_fee" : general_fee.val(),
							"security_fee" : security_fee.val(),
							"cleaning_fee" : cleaning_fee.val(),
							"fumigation_fee" : fumigation_fee.val(),
							"lift_maintenance_fee" : lift_maintenance_fee.val(),
							"electricity_fee" : electricity_fee.val(),
							"water_fee" : water_fee.val(),
							"heating_fee" : heating_fee.val(),
							"pay_date" : pay_date.val()
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
					
	      
	    
	return false;
});
	
	
	
});