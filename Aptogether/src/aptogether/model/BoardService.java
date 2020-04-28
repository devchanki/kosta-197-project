package aptogether.model;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import aptogether.model.Board;


public class BoardService {
	private static BoardService service = new BoardService();
	private static BoardDao dao;

	public static BoardService getInstance() {
		dao = BoardDao.getInstance();
		return service;
	}
	
	public List<Board> listBoardService(HttpServletRequest request){
		return dao.listBoard();
	}
	
	public int insertBoardService(HttpServletRequest request) throws Exception {
		request.setCharacterEncoding("utf-8");

		Board board = new Board();
	
		board.setTitle(request.getParameter("Title"));
		board.setContent(request.getParameter("Content"));
		board.setTel(request.getParameter("Tel"));
		board.setEmail(request.getParameter("Email"));

		
		return dao.insertBoard(board);
	}
	public void deleteBoardService(HttpServletRequest request) throws Exception {
		System.out.println("22222222222");
		request.setCharacterEncoding("utf-8");
		String x=request.getParameter("seq");
		System.out.println(x);
		dao.deleteBoard(Integer.parseInt(x));
	}
	
}
