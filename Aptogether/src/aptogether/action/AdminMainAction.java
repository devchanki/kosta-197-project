package aptogether.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import aptogether.model.Member;
import aptogether.service.MemberService;

public class AdminMainAction implements Action {
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = new ActionForward();
		
		MemberService service = MemberService.getService();
		HttpSession session = request.getSession();
		Member member = (Member) session.getAttribute("member");
		
		List<Member> waiting = service.watingMemberService(member.getApt_seq());
		
		request.setAttribute("member", member);
		request.setAttribute("waiting", waiting);
		
		forward.setRedirect(false);
		forward.setUrl("/dist/managerDashBoard.jsp");
		
		return forward;
	}
}
