package aptogether.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import aptogether.model.Member;
import aptogether.model.PollSelect;
import aptogether.model.PollService;
import aptogether.model.Detail;

public class PollDetailListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		
		PollService service = PollService.getinstance();
		ActionForward forward = new ActionForward();
		
		List<Detail> detail = service.PollDetailListService(request);
		
		request.setAttribute("detail", detail);
		
		forward.setRedirect(false);
		forward.setUrl("/dist/polldetail.jsp");
		
		return forward;
	}

}
