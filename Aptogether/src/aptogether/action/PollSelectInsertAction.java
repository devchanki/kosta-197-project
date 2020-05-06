package aptogether.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import aptogether.model.Member;
import aptogether.model.PollSelect;
import aptogether.model.PollService;

public class PollSelectInsertAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		ActionForward forward = new ActionForward();
		PollService service = PollService.getinstance();
		PollSelect pollselect = new PollSelect();
		HttpSession session = request.getSession();
		Member member = (Member) session.getAttribute("member");
		pollselect.setOption_seq(Integer.parseInt(request.getParameter("seq")));
		pollselect.setMember_seq(member.getMember_seq());
		service.PollSelectInsertService(pollselect);
		
		forward.setRedirect(true);
		forward.setUrl("/Aptogether/poll/PollListviewAction.do");
		
		return forward;
	}
 
}
