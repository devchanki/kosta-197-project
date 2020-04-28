package aptogether.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import aptogether.model.MarketService;
import aptogether.model.Market_Product;

public class Insertaction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward=new ActionForward();
		MarketService service=MarketService.getInstance();
		
		/*
		 * Market_Product product=new Market_Product();
		 * product.setWriter(request.getParameter("writer"));
		 * product.setPrice(Integer.parseInt(request.getParameter("price")));
		 * product.setProduct_name(request.getParameter("product_name"));
		 * product.setContents(request.getParameter("contents"));
		 * product.setFname(request.getParameter("fname"));
		 * product.setIsSale(request.getParameter("isSale"));
		 */
		
			try {
				service.insertMarketService(request);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	
		
		forward.setRedirect(true);
		forward.setUrl("listaction.do");
		return forward;
	}

}
