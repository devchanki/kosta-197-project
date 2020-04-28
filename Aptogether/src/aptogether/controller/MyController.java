package aptogether.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vo.Req;

/**
 * Servlet implementation class MyController
 */
@WebServlet("/map/*")
public class MyController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public void doMap(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String requestURI = request.getRequestURI(); // 현재 uri를 구해주는 메소드
		String contextPath = request.getContextPath(); // 컨텍스트의 경로를 찾아주는 메소드
		String command = requestURI.substring(contextPath.length() + 5); // insertFrom.do를 뽑기위한 작업입니다.
		System.out.println(command);

		if (command.equals("mapform.do")) {
			System.out.println("mapform실행");
			Req req = new Req();
			StringBuffer mapcode = req.aptList();
			//mapcode.toString();
			/*
			 * Object objPerson = JSONValue.parse(mapcode.toString()); JSONObject
			 * JSONObjPerson = (JSONObject)objPerson; JSONArray JSONArrayPerson =
			 * (JSONArray)JSONObjPerson.get("person"); JSONObject JSONObjName =
			 * (JSONObject)JSONArrayPerson.get(0);
			 * 
			 * System.out.println("firstName="+JSONObjName.get("firstName"));
			 * System.out.println("lastName="+JSONObjName.get("lastName"));
			 */
			   request.setAttribute("mapcode", mapcode.toString());
			  
			 
			RequestDispatcher rs = request.getRequestDispatcher("/sisulmap.jsp");
			rs.forward(request, response);
		}

	}

	public MyController() {
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
			doMap(request, response);
			System.out.println("doget실행");
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
			doMap(request, response);
			System.out.println("dopost실행");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
