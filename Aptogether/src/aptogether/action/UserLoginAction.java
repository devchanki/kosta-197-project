package aptogether.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import aptogether.model.Member;

public class UserLoginAction implements Action{
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		ActionForward forward = new ActionForward();
		HttpSession session = request.getSession();
		Member member = (Member) session.getAttribute("member");
		
		
		forward.setRedirect(false);
		forward.setUrl("/dist/userDashboard.jsp");
		return forward;
	}
}
