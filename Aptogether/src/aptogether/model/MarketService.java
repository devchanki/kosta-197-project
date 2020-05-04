package aptogether.model;

import java.io.File;
import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class MarketService {
	private static MarketService service = new MarketService();
	private static MarketDao2 dao;
	private static final int PAGE_SIZE = 9;

	public static MarketService getInstance() {
		dao = MarketDao2.getInstance();
		return service;
	}

	public int insertMarketService(HttpServletRequest request) throws Exception {
		request.setCharacterEncoding("utf-8");
		String uploadPath = request.getServletContext().getRealPath("/upload");
		System.out.println(uploadPath);
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


		if (multi.getFilesystemName("fname") != null) {
			String fname = multi.getFilesystemName("fname");
			market.setFname(fname);

			// ����� �̹���(gif,jpg) =>aa.gif, aa.jpg
			String pattern = fname.substring(fname.indexOf(".") + 1);// gif
			String head = fname.substring(0, fname.indexOf("."));// aa

			// ���� file��ü
			String imagePath = uploadPath + "/" + fname;
			System.out.println(imagePath);
			File src = new File(imagePath);

			// ����� file��ü
			String thumPath = uploadPath + "/" + head + "_small." + pattern;
			File dest = new File(thumPath);

			if (pattern.equals("gif") || pattern.equals("jpg")|| pattern.equals("png")) {
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
		// startpage
		// startpage=����������-(����������-1)%5 --> �� ģ���� �����Դϴ�.
		int startPage = requestPage - (requestPage - 1) % 5;

		// endpage
		int endPage = startPage + 4;
		if (endPage > totalPageCount) {
			endPage = totalPageCount;
		}
		// startRow
		// startRow=(����������-1)*�������� �۰���
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

	public int insertReplyService(Marketreply reply) {
		return dao.insertmarketreply(reply);
	
	}

	public List<Marketreply> listmarketreply(int seq) {
		// TODO Auto-generated method stub
		return dao.listmarketreply(seq);
	}

}
