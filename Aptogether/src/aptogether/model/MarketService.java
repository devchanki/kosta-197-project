package aptogether.model;

import java.io.File;
import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class MarketService {
	// 서비스가 없어지면 Action부분이 복잡해지게된다
	// 서비스에서 여러개의 쿼리를 동시에 실행시키기위해 dao를 여러개!
	// 게시판에 글만보는게아니라 댓글도봐야하고 조회수도 증가시켜야하고.. 여러개의 쿼리가 돌아야하니까요!
	private static MarketService service = new MarketService();
	private static MarketDao2 dao;
	private static final int PAGE_SIZE = 9;

	public static MarketService getInstance() {
		dao = MarketDao2.getInstance();
		return service;
	}

	public int insertMarketService(HttpServletRequest request) throws Exception {
		request.setCharacterEncoding("utf-8");
		// 파일 업로드 (경로,파일크기, 인코딩, 파일이름 중첩 정책)
		String uploadPath = request.getServletContext().getRealPath("/upload");

		System.out.println("리얼업로드패뜨" + uploadPath);
		// 줄이 그어지는건 사용비권장일뿐 사용은 가능하다
		int size = 20 * 1024 * 1024;// 20mb
		MultipartRequest multi = new MultipartRequest(request, uploadPath, size, "utf-8",
				new DefaultFileRenamePolicy());
		System.out.println(uploadPath);
		Market_Product market = new Market_Product();
		market.setContents(multi.getParameter("contents"));
		market.setPrice(Integer.parseInt(multi.getParameter("price")));
		market.setWriter(multi.getParameter("writer"));
		market.setProduct_name(multi.getParameter("product_name"));
		market.setRegdate(multi.getParameter("regdate"));
		market.setIsSale(multi.getParameter("isSale"));
		/* market.setFname(multi.getParameter("fname")); */
		market.setFname("");

		// 파일업로드시 db(파일이름저장)
		if (multi.getFilesystemName("fname") != null) {
			String fname = (String) multi.getFilesystemName("fname");
			market.setFname(fname);

			// 썸네일 이미지(gif,jpg) =>aa.gif, aa.jpg
			String pattern = fname.substring(fname.indexOf(".") + 1);// gif
			String head = fname.substring(0, fname.indexOf("."));// aa

			// 원본 file객체
			String imagePath = uploadPath + "\\" + fname;
			System.out.println(imagePath);
			File src = new File(imagePath);

			// 썸네일 file객체
			String thumPath = uploadPath + "\\" + head + "_small." + pattern;
			File dest = new File(thumPath);

			if (pattern.equals("gif") || pattern.equals("jpg")) {
				ImageUtil.resize(src, dest, 100, ImageUtil.RATIO);
			}

		} else {
			market.setFname("not_found.jpg");
		}
		market.toString();
		return dao.insertmarketproduct(market);
	}

	public ListModel listMarketService(HttpServletRequest request) throws UnsupportedEncodingException {
		request.setCharacterEncoding("utf-8");
		int totalCount = dao.countMarket();
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
		// startpage
		// startpage=현재페이지-(현재페이지-1)%5 --> 이 친구는 공식입니다.
		int startPage = requestPage - (requestPage - 1) % 5;

		// endpage
		int endPage = startPage + 4;
		if (endPage > totalPageCount) {
			endPage = totalPageCount;
		}
		// startRow
		// startRow=(현재페이지-1)*페이지당 글갯수
		int startRow = (requestPage - 1) * PAGE_SIZE;

		List<Market_Product> list = dao.listMarket(startRow);
		ListModel listModel = new ListModel(list, requestPage, totalPageCount, startPage, endPage);

		return listModel;
	}

	public Market_Product detailMarketService(int seq) {
		return dao.detailmarketproduct(seq);
	}

	public int deleteMarketService(int seq) {
		return dao.deletemarketproduct(seq);
	}

	public int updateMarketService(Market_Product product) {
		// TODO Auto-generated method stub
		return dao.updatemarketproduct(product);
	}

}
