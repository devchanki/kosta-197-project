package aptogether.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import aptogether.action.Action;
import aptogether.action.ActionForward;
import aptogether.action.Deleteaction;
import aptogether.action.Detailaction;
import aptogether.action.Insertaction;
import aptogether.action.Insertform;
import aptogether.action.Listaction;
import aptogether.action.Updateaction;
import aptogether.action.Updateform;

/**
 * Servlet implementation class MarketController
 */
@WebServlet("/Market/*")
public class MarketController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public void doMarket(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String requestURI = request.getRequestURI(); // 현재 uri를 구해주는 메소드
		String contextPath = request.getContextPath(); // 컨텍스트의 경로를 찾아주는 메소드
		String command = requestURI.substring(contextPath.length() + 8); // insertFrom.do를 뽑기위한 작업입니다.
		System.out.println(command);

		Action action = null;
		ActionForward forward = null;

		if (command.equals("insertform.do")) {
			action = new Insertform();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		} else if (command.equals("insertaction.do")) {
			action = new Insertaction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}else if (command.equals("listaction.do")) {
			action = new Listaction();
			try {
				forward = action.execute(request, response);
				System.out.println();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}else if (command.equals("detailaction.do")) {
			action = new Detailaction();
			try {
				forward = action.execute(request, response);
				System.out.println();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}else if (command.equals("deleteaction.do")) {
			action = new Deleteaction();
			try {
				forward = action.execute(request, response);
				System.out.println();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}else if (command.equals("updateform.do")) {
			action = new Updateform();
			try {
				forward = action.execute(request, response);
				System.out.println();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}else if (command.equals("updateaction.do")) {
			action = new Updateaction();
			try {
				forward = action.execute(request, response);
				System.out.println();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		/*
		 * else if (command.equals("listAction.do")) {
		 * System.out.println("listaction작동"); action = new ListAction(); try { forward
		 * = action.execute(request, response); } catch (Exception e) {
		 * e.printStackTrace(); } } else if (command.equals("detailAction.do")) {
		 * System.out.println("디테일 액션작동"); action = new DetailAction(); try { forward =
		 * action.execute(request, response); } catch (Exception e) {
		 * e.printStackTrace(); } } else if (command.equals("deleteAction.do")) { action
		 * = new DeleteAction(); try { forward = action.execute(request, response); }
		 * catch (Exception e) { e.printStackTrace(); } } else if
		 * (command.equals("updateAction.do")) { action = new UpdateAction(); try {
		 * forward = action.execute(request, response); } catch (Exception e) {
		 * e.printStackTrace(); } } else if (command.equals("realupdateAction.do")) {
		 * action = new RealUpdateAction(); try { forward = action.execute(request,
		 * response); } catch (Exception e) { e.printStackTrace(); } } else if
		 * (command.equals("insertReplyAction.do")) { action = new InsertReplyAction();
		 * try { forward = action.execute(request, response); } catch (Exception e) {
		 * e.printStackTrace(); } }
		 */

		if (forward != null) {
			if (forward.isRedirect()) {
				response.sendRedirect(forward.getUrl());
			} else {
				RequestDispatcher dispatcher = request.getRequestDispatcher(forward.getUrl());
				System.out.println(forward.getUrl());
				dispatcher.forward(request, response);
			}
		}

	}

	public MarketController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			doMarket(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			doMarket(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
