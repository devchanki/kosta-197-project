package aptogether.action;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import aptogether.model.ImageUtil;
import aptogether.model.MarketService;
import aptogether.model.Market_Product;

public class Updateaction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = new ActionForward();
		MarketService service = MarketService.getInstance();
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		String uploadPath = request.getServletContext().getRealPath("/upload");

		System.out.println("������ε��ж�" + uploadPath);
		// ���� �׾����°� ��������ϻ� ����� �����ϴ�
		int size = 20 * 1024 * 1024;// 20mb
		
		MultipartRequest multi;
		try {
			multi = new MultipartRequest(request, uploadPath, size, "utf-8",
					new DefaultFileRenamePolicy());
			Market_Product product = new Market_Product();
			int seq = Integer.parseInt(multi.getParameter("seq"));
			product.setSeq(seq);
			product.setContents(multi.getParameter("contents"));
			product.setPrice(Integer.parseInt(multi.getParameter("price")));
			product.setIsSale(multi.getParameter("isSale"));
			if (multi.getFilesystemName("fname") != null) {
				String fname = multi.getFilesystemName("fname");
				product.setFname(fname);

				// ����� �̹���(gif,jpg) =>aa.gif, aa.jpg
				String pattern = fname.substring(fname.indexOf(".") + 1);// gif
				String head = fname.substring(0, fname.indexOf("."));// aa

				// ���� file��ü
				String imagePath = uploadPath + "\\" + fname;
				System.out.println(imagePath);
				File src = new File(imagePath);

				// ����� file��ü
				String thumPath = uploadPath + "\\" + head + "_small." + pattern;
				File dest = new File(thumPath);

				if (pattern.equals("gif") || pattern.equals("jpg")) {
					ImageUtil.resize(src, dest, 100, ImageUtil.RATIO);
				}
	

			} else {
				product.setFname("not_found.jpg");
			}

			product.setProduct_name(multi.getParameter("product_name"));
			product.setWriter(multi.getParameter("writer"));

			service.updateMarketService(product);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}



		forward.setRedirect(true);
		forward.setUrl("listaction.do");
		return forward;
	}

}
