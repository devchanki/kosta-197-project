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
import aptogether.action.CompBoard;
import aptogether.action.CompMain;
import aptogether.action.CompWrite;
import aptogether.action.WriteForm;
import aptogether.model.BoardService;
import aptogether.model.Showcomp;
import aptogether.action.InsertAction;

@WebServlet("/apto/*")
public class CompController extends HttpServlet{
	private static final long serialVersionUID = 1L;	
	
	public CompController(){
		super();
	}
		
	public void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		String requestURI=request.getRequestURI(); 
	    	String contextPath=request.getContextPath(); 
	    	String command=requestURI.substring(contextPath.length()+6);
		System.out.println(requestURI);
		
		Action action = null;
		ActionForward forward = null;
		
		if(command.equals("compMain.do")) {
			action = new CompMain();
			try {	
				forward = action.execute(request, response);
			} catch(Exception e) {
				e.printStackTrace();
			} 
		} else if (command.equals("compWrite.do")) {	
			action = new CompWrite();
			try {
				forward = action.execute(request, response);
			} catch(Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("WriteForm.do")) {
			action = new WriteForm();
		 try {
			forward = action.execute(request, response);
		} catch(Exception e) {
			e.printStackTrace();
		}
	} else if(command.equals("insertAction.do")) {
		action=new InsertAction();
		try {
			forward=action.execute(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	} else if (command.equals("Compboard.do")) {
		action = new CompBoard();
		try {
			forward=action.execute(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
		
		/*
		 * else if (command.equals("compBoard.do")) { action = new CompBoard();
		 * request.setCharacterEncoding("utf-8");
		 * 
		 * BoardService service = BoardService.getInstance();
		 * 
		 * Showcomp showcomp = new Showcomp();
		 * 
		 * List<Showcomp> list = service.listBoardService(no_comp);
		 * 
		 * PrintWriter out = response.getWriter();
		 * 
		 * JSONObject obj = new JSONObject(); JSONArray arr = new JSONArray();
		 * 
		 * for(Showcomp s: list) { JSONObject tmp = new JSONObject();
		 * tmp.compute("no_comp", s.getNo_comp()); } obj.put("data", arr);
		 * System.out.println(obj.toString()); out.print(arr.toString()); out.flush();
		 * 
		 * }
		 */
	
		if(forward!=null) {
    		if(forward.isRedirect()) {
    			
    			response.sendRedirect(forward.getUrl());
    		}else {
    			RequestDispatcher dispatcher=request.getRequestDispatcher(forward.getUrl());
    			dispatcher.forward(request, response);
    		}
    	}
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		doProcess(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}
}

