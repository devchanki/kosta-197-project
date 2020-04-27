package aptogether.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import aptogether.model.Option;
import aptogether.model.Poll;
import aptogether.model.PollService;

public class PollListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		PollService service = PollService.getinstance();
		ActionForward forward = new ActionForward();
		
		List<Poll> list = service.PollListService(request);
		request.setAttribute("list", list);
		
		/*
		 * List<Option> item = service.OptionListService(request);
		 * request.setAttribute("item", item);
		 */
		
		forward.setRedirect(false);
		forward.setUrl("/dist/pollListview.jsp");
		
		return forward;
	}

}
