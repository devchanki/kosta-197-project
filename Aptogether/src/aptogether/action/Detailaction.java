package aptogether.action;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import aptogether.model.ListModel;
import aptogether.model.MarketService;
import aptogether.model.Market_Product;
import aptogether.model.Marketreply;

public class Detailaction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		ActionForward forward=new ActionForward();
		MarketService service=MarketService.getInstance();
		
		Market_Product product=new Market_Product();
		
		
		int seq=Integer.parseInt(request.getParameter("seq"));
		product = service.detailMarketService(seq);
		
		request.setAttribute("product",product);
		
		List<Marketreply> list=service.listmarketreply(seq);
		request.setAttribute("list", list);
				
		forward.setRedirect(false);
		forward.setUrl("/dist/detail.jsp");
		return forward;
	}

}
