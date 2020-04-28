package aptogether.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import aptogether.model.Option;
import aptogether.model.Poll;
import aptogether.model.PollService;

public class PollInsertAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		ActionForward forward = new ActionForward();
		PollService service = PollService.getinstance();
		Poll poll = new Poll();
		List<Option> option = new ArrayList<Option>();
		String s[] = request.getParameterValues("options");
		for(String opt : s) {
			Option op = new Option();
			op.setOption_text(opt);
			option.add(op);
		}
		
		poll.setQuestion(request.getParameter("question"));
		poll.setContents(request.getParameter("contents"));
		
		service.PollInsertService(poll,option);
		
		forward.setRedirect(true);
		forward.setUrl("/Aptogether/poll/PollListAction.do");
		
		return forward;
	}

}
