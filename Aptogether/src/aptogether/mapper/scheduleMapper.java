package aptogether.mapper;


import java.util.List;

import aptogether.model.Member;
import aptogether.model.Schedule;


public interface scheduleMapper {

int insertSchedule(Schedule schedule);
int updateSchedule(Schedule schedule);
int deleteSchedule(int schedule_Seq);
List<Schedule> listScheduleAPT(int apt_Seq);
List<Schedule> listScheduleAPT_Dong(Member member);
}
       