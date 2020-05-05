package aptogether.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import aptogether.action.Action;
import aptogether.action.ActionForward;
import aptogether.action.PollDetailListAction;
import aptogether.action.PollInsertAction;
import aptogether.action.PollListAction;
import aptogether.action.PollListviewAction;
import aptogether.action.PollSelectInsertAction;
import aptogether.model.Option;
import aptogether.model.PollService;

@WebServlet("/poll/*")
public class PollController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public PollController() {
		super();
	}

	public void doProcess(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String requestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String command = requestURI.substring(contextPath.length() + 6);

		Action action = null;
		ActionForward forward = null;

		if (command.equals("PollInsertAction.do")) {
			action = new PollInsertAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("PollListAction.do")) {
			action = new PollListAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("PollListviewAction.do")) {
			action = new PollListviewAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("PollSelectInsertAction.do")) {
			action = new PollSelectInsertAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if(command.equals("PollDetailListAction.do")){
			action = new PollDetailListAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}else if (command.equals("OptionListAction.do")) {
			PollService service = PollService.getinstance();
			try {
				request.setCharacterEncoding("utf-8");
				String seq = request.getParameter("seq");

				JSONArray arr = new JSONArray();
				List<Option> info = service.OptionListService(request);
				service.PollHitcountService(request);
				for (Option op : info) {
					JSONObject obj = new JSONObject();
					obj.put("option_seq", op.getOption_seq());
					obj.put("option_text", op.getOption_text());
					arr.add(obj);
				}
				response.setCharacterEncoding("UTF-8");
				PrintWriter out = response.getWriter();
				if (info != null) {
					out.print(arr.toString());
					out.flush();
				} else {
					out.print("{\"result\": \"false\"}");
					out.flush();
				}
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}

		}

		if (forward != null) {
			if (forward.isRedirect()) {
				response.sendRedirect(forward.getUrl());
			} else {
				RequestDispatcher dispatcher = request.getRequestDispatcher(forward.getUrl());
				dispatcher.forward(request, response);
			}
		}

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			doProcess(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			doProcess(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
