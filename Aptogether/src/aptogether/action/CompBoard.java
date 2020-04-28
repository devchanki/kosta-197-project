package aptogether.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import aptogether.model.Board;
import aptogether.model.BoardService;

public class CompBoard implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = new ActionForward();
		BoardService service = BoardService.getInstance();
		
		List<Board> list = service.listBoardService(request);
		
		request.setAttribute("list", list);
		
		forward.setRedirect(false);
		forward.setUrl("/dist/comp_board.jsp");
		
		
		return forward;
	}
	
}
