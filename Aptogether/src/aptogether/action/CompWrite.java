package aptogether.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CompWrite implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = new ActionForward();
		
		forward.setRedirect(true);
		forward.setUrl("/Aptogether/dist/comp_select.jsp");
		return forward;
	}
	
}
