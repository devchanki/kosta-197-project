package aptogether.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Insertform implements Action {

	@Override
	/*public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward=new ActionForward();
		forward.setRedirect(isRedirect);
		forward.setUrl(url);
		
		return forward;
	}*/
	
	
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward=new ActionForward();
		forward.setRedirect(true);
		forward.setUrl("/Aptogether/dist/insert_form.jsp");
		///dist/Market
		return forward;
	}
	
	

}
