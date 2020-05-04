package aptogether.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import aptogether.model.BoardService;

public class CompDelete implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = new ActionForward();
		BoardService service = BoardService.getInstance();
		service.deleteBoardService(request);
		
		forward.setRedirect(true);
		forward.setUrl("Compboard.do");
		return forward;
	}
	
}
