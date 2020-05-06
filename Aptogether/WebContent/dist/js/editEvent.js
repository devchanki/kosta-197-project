/* ****************
 *  일정 편집
 * ************** */
var editEvent = function (event, element, view) {

    $('#deleteEvent').data('id', event._id); //클릭한 이벤트 ID

    $('.popover.fade.top').remove();
    $(element).popover("hide");

    if (event.allDay === true) {
        editAllDay.prop('checked', true);
    } else {
        editAllDay.prop('checked', false);
    }

    if (event.end === null) {
        event.end = event.start;
    }

    if (event.allDay === true && event.end !== event.start) {
        editEnd.val(moment(event.end).subtract(1, 'days').format('YYYY-MM-DD HH:mm'))
    } else {
        editEnd.val(event.end.format('YYYY-MM-DD HH:mm'));
    }

    modalTitle.html('일정 수정');
    editId.val(event._id);
    editTitle.val(event.title);
    editDong.val(event.dong);
    editStart.val(moment(event.start).format('YYYY-MM-DD HH:mm'));
    editEnd.val(moment(event.end).format('YYYY-MM-DD HH:mm'));
    editType.val('수정');
    editDesc.val(event.contents);
    editColor.val(event.backgroundColor).css('color', event.backgroundColor);
    editAptSeq.val(event.apt_seq);


    addBtnContainer.hide();
    modifyBtnContainer.show();
    eventModal.modal('show');

    //업데이트 버튼 클릭시
    $('#updateEvent').unbind();
    $('#updateEvent').on('click', function () {

        if (editStart.val() > editEnd.val()) {
            alert('끝나는 날짜가 앞설 수 없습니다.');
            return false;
        }

        if (editTitle.val() === '') {
            alert('일정명은 필수입니다.')
            return false;
        }

        var statusAllDay;
        var startDate;
        var endDate;
        var displayDate;

        if (editAllDay.is(':checked')) {
            statusAllDay = true;
            startDate = moment(editStart.val()).format('YYYY-MM-DD');
            endDate = moment(editEnd.val()).format('YYYY-MM-DD');
            displayDate = moment(editEnd.val()).add(1, 'days').format('YYYY-MM-DD');
        } else {
            statusAllDay = false;
            startDate = moment(editStart.val()).format('YYYY-MM-DD');
            endDate =moment(editEnd.val()).format('YYYY-MM-DD');
            displayDate = endDate;
        }

        eventModal.modal('hide');

        event.allDay = statusAllDay;
        event.title = editTitle.val();
        event.dong = editDong.val();
        event.start = startDate;
        event.end = displayDate;
        event.type = editType.val();
        event.backgroundColor = editColor.val();
        event.contents = editDesc.val();
        event.apt_seq = editAptSeq.val();

        $("#calendar").fullCalendar('updateEvent', event);

        //일정 업데이트
        $.ajax({
        	url: "/Aptogether/schedule/updateSchedule",
 			type: "get",
 			dataType: "text",
 			data: {
 				"id": editId.val(),
 				"title": editTitle.val(),
 				"dong" : editDong.val(),
 				"contents":  editDesc.val(),
 				"start_Date": moment(editStart.val()).format('YYYY-MM-DD HH:mm'),
 				"end_Date": moment(editEnd.val()).format('YYYY-MM-DD HH:mm'),
 				"backgroundColor": editColor.val(),
 				"apt_Seq": editAptSeq.val()
 			},
            success: function (response) {
                alert('수정되었습니다.');
                location.reload();
            }
        });
        

    });
};

// 삭제버튼
$('#deleteEvent').on('click', function () {
    
    $('#deleteEvent').unbind();
    $("#calendar").fullCalendar('removeEvents', $(this).data('id'));
    eventModal.modal('hide');

    //삭제시
    $.ajax({
        type: "get",
        url: "/Aptogether/schedule/deleteSchedule",
        data: {
        		"id": editId.val(),
        		"apt_Seq": editAptSeq.val()
        },
        success: function (response) {
            alert('삭제되었습니다.');
            location.reload();

        }
    });

});