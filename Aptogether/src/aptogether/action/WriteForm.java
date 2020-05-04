package aptogether.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class WriteForm implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = new ActionForward();
			
		forward.setRedirect(false);
		forward.setUrl("/dist/comp_complete.jsp");
		return forward;
	}
	
}
	