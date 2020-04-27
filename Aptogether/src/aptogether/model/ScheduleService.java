package aptogether.model;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.RowBounds;

public class ScheduleService {

	private static ScheduleService service = new ScheduleService();
	private static ScheduleDao dao;

	public static ScheduleService getInstance() {
		dao=ScheduleDao.getInstance();
		return service;
	}
	
	public int insertScheduleService(Schedule schedule)throws Exception {
		return dao.insertSchedule(schedule);
	}
	
	
	public List<Schedule> listScheduleService(){
		return dao.listSchedule();
	}

	
	public int updateScheduleService(Schedule schedule) {
		return dao.updateSchedule(schedule);
	}
	
	public int deleteScheduleService(int schedule_Seq) {
		return dao.deleteSchedule(schedule_Seq);
}
}