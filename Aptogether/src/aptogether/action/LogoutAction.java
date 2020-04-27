package aptogether.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LogoutAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		ActionForward action = new ActionForward();
		HttpSession session = request.getSession();
		
		
			session.invalidate();
			//session.setMaxInactiveInterval(0);
		
		System.out.println("hello world");
		action.setRedirect(true);
		action.setUrl("/Aptogether/index.html");
		
		return action;
	}

}
