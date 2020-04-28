package aptogether.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import aptogether.model.Member;
import aptogether.model.Schedule;
import aptogether.model.ScheduleService;
import aptogether.service.MemberService;

public class ScheduleAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		  ActionForward forward = new ActionForward();
	      MemberService service = MemberService.getService();
	      ScheduleService service2 = ScheduleService.getInstance();
	    HttpSession session = request.getSession();
	    
	      
	    
	      	Member member= (Member) session.getAttribute("member");
			request.setAttribute("member", member);
			List<Schedule> schedule = service2.listScheduleAPTService(member.getApt_seq());
			request.setAttribute("schedule", schedule);
			
			forward.setRedirect(false);
			forward.setUrl("/Aptogether/dist/schedule.jsp");
			

			return forward; 
	      
	  

}
}
