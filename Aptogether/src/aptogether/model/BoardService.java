package aptogether.model;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import aptogether.model.Board;
import aptogether.model.CompListModel;
import aptogether.model.Search;


public class BoardService {
	private static BoardService service = new BoardService();
	private static BoardDao dao;
	private static final int PAGE_SIZE = 2;
	
	public static BoardService getInstance() {
		dao = BoardDao.getInstance();
		return service;
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
	
		
		System.out.println("삭제");
		request.setCharacterEncoding("utf-8");
		String x= request.getParameter("seq");
		System.out.println(x);
		dao.deleteBoard(Integer.parseInt(x));
	}
	
	
	
	public CompListModel ComplistBoardService(HttpServletRequest request) throws Exception {
		request.setCharacterEncoding("utf-8");
		Search search = new Search();
		HttpSession session=request.getSession();
		
		int totalCount = dao.countBoard(search);
		// 총페이지수
		int totalPageCount = totalCount / PAGE_SIZE;
		if (totalCount % PAGE_SIZE > 0) {
			totalPageCount++;
		}

		// 현재페이지
		String pageNum = request.getParameter("pageNum");
		if (pageNum == null) {
			pageNum = "1";
		}

		int requestPage = Integer.parseInt(pageNum);
		int startPage = requestPage - (requestPage - 1) % 5;

		int endPage = startPage + 4;
		if (endPage > totalPageCount) {
			endPage = totalPageCount;
		}
		// startRow
		// startRow=(현재페이지-1)*페이지당 글갯수
		int startRow = (requestPage - 1) * PAGE_SIZE;

		List<Board> list = dao.listBoard(search, startRow);
		CompListModel CompListModel = new CompListModel(list, requestPage, totalPageCount, startPage, endPage);

		return CompListModel;
	}
}
