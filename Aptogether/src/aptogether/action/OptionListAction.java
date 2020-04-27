package aptogether.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import aptogether.model.Option;
import aptogether.model.PollService;

public class OptionListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		PollService service = PollService.getinstance();
		ActionForward forward = new ActionForward();

		List<Option> item = service.OptionListService(request);
		System.out.println(item);
		request.setAttribute("item", item);
		
		forward.setRedirect(false);
		forward.setUrl("/dist/pollListview.jsp");
		
		return forward;
	}

}
