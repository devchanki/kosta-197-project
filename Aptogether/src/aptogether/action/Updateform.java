package aptogether.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import aptogether.model.MarketService;
import aptogether.model.Market_Product;

public class Updateform implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward=new ActionForward();
		MarketService service=MarketService.getInstance();
		
		Market_Product product = null;
		int seq=Integer.parseInt(request.getParameter("seq"));
		product = service.detailMarketService(seq);
		
		request.setAttribute("product",product);
		
		forward.setRedirect(false);
		forward.setUrl("/dist/updateform.jsp");
		return forward;
	}

}
