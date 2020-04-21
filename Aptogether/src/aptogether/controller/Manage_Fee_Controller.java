package aptogether.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import aptogether.action.Action;
import aptogether.action.ActionForward;


@WebServlet(asyncSupported = true, urlPatterns = {"/Manage_Fee/*"})
public class Manage_Fee_Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public Manage_Fee_Controller() {
        super();
    }

    public void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    		String requestURI = request.getRequestURI();
    		String contextPath = request.getContextPath();
    		String command = requestURI.substring(contextPath.length()+12);
    		
    		Action action = null;
    		ActionForward forward = null;
    		
    		
    		
    		
    				
    	
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

}
