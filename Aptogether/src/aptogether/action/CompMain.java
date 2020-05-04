package aptogether.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CompMain implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = new ActionForward();
		
		forward.setRedirect(true);
		forward.setUrl("/Aptogether/dist/comp_main.jsp");
		
		return forward;
	}
}
	
	

