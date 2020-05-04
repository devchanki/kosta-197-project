package aptogether.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import aptogether.action.Action;
import aptogether.action.ActionForward;
import aptogether.model.MarketService;
import aptogether.model.Marketreply;

public class Insertreplyaction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		MarketService service=MarketService.getInstance();
		ActionForward forward= new ActionForward();
		
		Marketreply reply =new Marketreply();
		request.setCharacterEncoding("utf-8");
		reply.setR_writer(request.getParameter("r_writer"));
		reply.setR_contents(request.getParameter("r_contents"));
		reply.setSeq(Integer.parseInt(request.getParameter("seq")));
		
		service.insertReplyService(reply);
		
		forward.setRedirect(true);
		forward.setUrl("detailaction.do?seq="+request.getParameter("seq"));
		return forward;
	}

}
