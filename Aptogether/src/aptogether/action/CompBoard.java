package aptogether.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import aptogether.model.Board;
import aptogether.model.BoardService;
import aptogether.model.CompListModel;

public class CompBoard implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = new ActionForward();
		BoardService service = BoardService.getInstance();
		
		CompListModel listModel =service.ComplistBoardService(request);
		request.setAttribute("listModel", listModel);
		
		forward.setRedirect(false);
		forward.setUrl("/dist/comp_board.jsp");	
		
		
		return forward;
	}
	
}
