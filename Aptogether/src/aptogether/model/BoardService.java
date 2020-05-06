package aptogether.model;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

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
		String uploadPath = request.getRealPath("upload");
		request.setCharacterEncoding("utf-8");
		int size=20*1024*1024;
		MultipartRequest multi=
				new MultipartRequest(request,uploadPath,size,
						"utf-8",new DefaultFileRenamePolicy());
		
		Board board = new Board();
	
		board.setTitle(multi.getParameter("Title"));
		board.setContents(multi.getParameter("Content"));
		board.setTel(multi.getParameter("Tel"));
		board.setEmail(multi.getParameter("Email"));
		board.setFname(multi.getParameter("Fname"));
		
		if(multi.getFilesystemName("Fname")!=null) {
			String fname=(String)multi.getFilesystemName("Fname");
			board.setFname(fname);
	
			String pattern = fname.substring(fname.indexOf(".") + 1); //gif
			String head = fname.substring(0, fname.indexOf(".")); //aa
			

			String imagePath = uploadPath + "/" + fname;
			File src = new File(imagePath);
			

			String thumPath = uploadPath + "/" + head + "_small" + pattern;
			File dest = new File(thumPath);
			
			if(pattern.equals("gif") || pattern.equals("jpg")) {
				ImageUtil.resize(src, dest, 100, ImageUtil.RATIO);
			}
			
		}
		return dao.insertBoard(board);
	}
	public void deleteBoardService(HttpServletRequest request) throws Exception {
	
		
		System.out.println("����");
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
		// ����������
		int totalPageCount = totalCount / PAGE_SIZE;
		if (totalCount % PAGE_SIZE > 0) {
			totalPageCount++;
		}

		// ����������
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
		// startRow=(����������-1)*�������� �۰���
		int startRow = (requestPage - 1) * PAGE_SIZE;

		List<Board> list = dao.listBoard(search, startRow);
		CompListModel CompListModel = new CompListModel(list, requestPage, totalPageCount, startPage, endPage);

		return CompListModel;
	}
}
