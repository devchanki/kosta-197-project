package aptogether.mapper;


import java.util.List;

import org.apache.ibatis.session.RowBounds;

import aptogether.model.Schedule;


public interface scheduleMapper {

int insertSchedule(Schedule schedule);
List<Schedule> listSchedule();
int updateSchedule(Schedule schedule);
int deleteSchedule(int schedule_Seq);
List<Schedule> listSchedule_APT(int apt_Seq);
}
       