package aptogether.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class JoinAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		ActionForward action = new ActionForward();
		action.setUrl("/Aptogether/dist/signup.jsp");
		action.setRedirect(true);
		return action;
	}

}
