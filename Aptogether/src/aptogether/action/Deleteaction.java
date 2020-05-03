package aptogether.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import aptogether.model.MarketService;

public class Deleteaction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward=new ActionForward();
		MarketService service=MarketService.getInstance();
		
		
		int seq=Integer.parseInt(request.getParameter("seq"));
		service.deleteMarketService(seq);
		
		forward.setRedirect(true);
		forward.setUrl("listaction.do");
		return forward;
	}

}
