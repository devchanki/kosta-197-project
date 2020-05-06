package aptogether.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import aptogether.model.Member;
import aptogether.model.Option;
import aptogether.model.Poll;
import aptogether.model.PollService;

public class PollListviewAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		PollService service = PollService.getinstance();
		ActionForward forward = new ActionForward();
		
		HttpSession session = request.getSession();
		Member member = (Member) session.getAttribute("member");
		
		List<Poll> list = service.PollListService(request, member);
		request.setAttribute("list", list);
		
		
		forward.setRedirect(false);
		forward.setUrl("/pollListview.jsp");
		
		return forward;
	}

}
