package aptogether.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import aptogether.model.AptInfo;
import aptogether.model.Member;
import aptogether.security.ApiKeys;
import aptogether.service.AptService;

/**
 * Servlet implementation class MyController
 */
@WebServlet("/map/*")
public class MapController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public void doMap(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String requestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String command = requestURI.substring(contextPath.length() + 5);

		if (command.equals("mapform.do")) {
			AptService service = AptService.getService();
			String mapApiKey = ApiKeys.getKakaoMapJsKey();
			request.setAttribute("kakaoMap", mapApiKey);
			HttpSession session = request.getSession();
			Member member = (Member) session.getAttribute("member");
			AptInfo apt = service.showAptInfo(member.getApt_seq());
			request.setAttribute("apt", apt);
			RequestDispatcher rs = request.getRequestDispatcher("/aptMap.jsp");
			rs.forward(request, response);
		}

	}

	public MapController() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			doMap(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			doMap(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
