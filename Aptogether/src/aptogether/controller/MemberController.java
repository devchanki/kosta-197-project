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
import aptogether.action.JoinAction;
import aptogether.action.LogoutAction;
import aptogether.action.SigninAction;
import aptogether.action.SignupAction;

/**
 * Servlet implementation class MemberController
 */
@WebServlet("/member/*")
public class MemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public MemberController() {
		super();
		// TODO Auto-generated constructor stub
	}

	public void doProcess(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url = request.getRequestURI();
		String[] requestStringArray = url.split("/");
		Action action = null;
		ActionForward forward = null;
		String requestString = requestStringArray[requestStringArray.length - 1];
		if (requestString.equals("join.do")) {
			System.out.println("in");
			action = new SignupAction();
			forward = action.execute(request, response);
		} else if (requestString.equals("joinPage.do")) {
			action = new JoinAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		} else if (requestString.equals("signin.do")) {
			action = new SigninAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		} else if (requestString.equals("logout.do")) {
			System.out.println("forward");
			action = new LogoutAction();
			System.out.println("forward1");
			try {
				forward = action.execute(request, response);
				System.out.println("forward");
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
		
    	if(forward != null) {
    		if(forward.isRedirect()) {
    			response.sendRedirect(forward.getUrl());
    		}else {
    			RequestDispatcher dispatcher = request.getRequestDispatcher(forward.getUrl());
    			dispatcher.forward(request, response);
    		}
    	}
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			doProcess(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			doProcess(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
