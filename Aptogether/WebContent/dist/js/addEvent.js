var eventModal = $('#eventModal');

var modalTitle = $('.modal-title');
var editId = $('#edit-Id');
var editAllDay = $('#edit-allDay');
var editTitle = $('#edit-title');
var editStart = $('#edit-start');
var editEnd = $('#edit-end');
var editType = $('#edit-type');
var editColor = $('#edit-color');
var editDesc = $('#edit-desc');


var addBtnContainer = $('.modalBtnContainer-addEvent');
var modifyBtnContainer = $('.modalBtnContainer-modifyEvent');


/* ****************
 *  새로운 일정 생성
 * ************** */
var newEvent = function (start, end, eventType) {

    $("#contextMenu").hide(); //메뉴 숨김

    modalTitle.html('새로운 일정');
    editType.val(eventType).prop('selected', true);
    editTitle.val('');
    editStart.val(start);
    editEnd.val(end);
    editDesc.val('');
    
    addBtnContainer.show();
    modifyBtnContainer.hide();
    eventModal.modal('show');

		
    //새로운 일정 저장버튼 클릭
    $('#save-event').unbind();
    $('#save-event').on('click', function () {
        var eventData = {
                title : editTitle.val(),
            	contents : editDesc.val(),
            	start_Date : moment(editStart.val()).format('YYYY-MM-DD HH:mm'),
            	end_Date : moment(editEnd.val()).format('YYYY-MM-DD HH:mm'),
            	apt_Seq : 3,
            	type: editType.val(),
           // 	username: '사나',
                backgroundColor: editColor.val(),
                textColor: '#ffffff',
            	allDay: false
        };
        
        
        //console.log(eventData);
        
        if (eventData.start > eventData.end) {
            alert('끝나는 날짜가 앞설 수 없습니다.');
            return false;
        }

        if (eventData.title === '') {
            alert('일정명은 필수입니다.');
            return false;
        }

        var realEndDay;

        if (editAllDay.is(':checked')) {
            eventData.start = moment(eventData.start).format('YYYY-MM-DD HH:mm');
            //render시 날짜표기수정
            eventData.end = moment(eventData.end).add(1, 'days').format('YYYY-MM-DD HH:mm');
            //DB에 넣을때(선택)
            realEndDay = moment(eventData.end).format('YYYY-MM-DD HH:mm');

            eventData.allDay = true;
        }
		 $.ajax({
 			url: "/Aptogether/schedule/insertSchedule",
 			type: "get",
 			dataType: "text",
 			data: {
 				"title": editTitle.val(),
 				"contents":  editDesc.val(),
 				"start_Date": moment(editStart.val()).format('YYYY-MM-DD HH:mm'),
 				"end_Date": moment(editEnd.val()).format('YYYY-MM-DD HH:mm'),
 				"apt_Seq": 3,
 				"backgroundColor": editColor.val()
 			},
 			  
 			success: function(data){      
 					 $('#calendar').fullCalendar('removeEvents');
 	                $('#calendar').fullCalendar('refetchEvents');
 	                
 				if(data == "success"){
 					
 					alert("입력에 성공하셨습니다.");
 				}else {
 					alert("잠시후 다시 시도해주세요.");
 				}
 			},
 			error: function(request, status, error) {
 				alert("요청에 실패하였습니다. 조금 있다 다시 요청해주세요.")
 			}
 		}); 
		 
        $("#calendar").fullCalendar('renderEvent', eventData, true);
        eventModal.find('input, textarea').val('');
        editAllDay.prop('checked', false);
        eventModal.modal('hide');
        
    });
};