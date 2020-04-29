$(function() {
	
	//숫자 세자리 수 마다 콤마 붙는 정규표현식 함수
	function AmountCommas(val){
	    return val.toString().replace(/\B(?=(\d{3})+(?!\d))/g,",");
	}
	
	createTable();
	function createTable() {
		$.ajax({
			url : "/Aptogether/manageFee/showListManageFeePart",
			type : "GET",
			dataType : "text",
//			data: {
//				"member_seq" : member_seq_init,
//			},
			success : function(response) {
				console.log(response);
				data = JSON.parse(response);
				console.log(response);
				 $('#thisMonthFee').html(AmountCommas(data[i].general_fee + data[i].security_fee + + data[i].cleaning_fee + 
							data[i].fumigation_fee + data[i].lift_maintenance_fee + data[i].electricity_fee+ data[i].water_fee + data[i].heating_fee));
							}
						});
				}
	
	
	
});

