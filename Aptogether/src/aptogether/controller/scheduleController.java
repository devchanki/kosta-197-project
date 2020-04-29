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
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.sun.scenario.effect.Merge;

import aptogether.action.Action;
import aptogether.action.ActionForward;
import aptogether.action.ScheduleAction;
import aptogether.action.SigninAction;
import aptogether.model.Member;
import aptogether.model.Schedule;
import aptogether.model.ScheduleService;

@WebServlet("/schedule/*")
public class scheduleController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public scheduleController() {
		super();
	}

	public void doProcess(HttpServletRequest request, HttpServletResponse response) throws Exception {

		String requestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String command = requestURI.substring(contextPath.length() + 10);
	//	System.out.println(requestURI);

		ActionForward forward = null;


		 if (command.equals("insertSchedule")) {
			request.setCharacterEncoding("utf-8");
	        HttpSession session = request.getSession();

	        try {
	        	Member member = (Member)session.getAttribute("member");
	        	
	        	ScheduleService service = ScheduleService.getInstance();
				String title = request.getParameter("title");
				String contents = request.getParameter("contents");
				String start = request.getParameter("start_Date");
				String end = request.getParameter("end_Date");
				int apt_Seq = member.getApt_seq();
				String backgroundColor =request.getParameter("backgroundColor");
				String dong = request.getParameter("dong");
				Schedule schedule = new Schedule(-1, title, contents, start, end, apt_Seq, backgroundColor, dong);
				 System.out.println(schedule.toString());
				int result = service.insertScheduleService(schedule);
				PrintWriter out = response.getWriter();
				if (result > 0) {
					out.write("success");
				} else {
					out.write("false");
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		

		} else if (command.equals("updateSchedule")) {
			request.setCharacterEncoding("utf-8");
			HttpSession session = request.getSession();

			try {
				Member member = (Member) session.getAttribute("member");
				ScheduleService service = ScheduleService.getInstance();
				String id = request.getParameter("id");
				String title = request.getParameter("title");
				String contents = request.getParameter("contents");
				String start = request.getParameter("start_Date");
				String end = request.getParameter("end_Date");
				int apt_Seq = member.getApt_seq();
				String backgroundColor = request.getParameter("backgroundColor");
				String dong = request.getParameter("dong");
				Schedule schedule = new Schedule(Integer.parseInt(id), title, contents, start, end, apt_Seq, backgroundColor, dong);
				System.out.println(schedule.toString());
				int result = service.updateScheduleService(schedule);
				PrintWriter out = response.getWriter();
				if (result > 0) {
					out.write("success");
				} else {
					out.write("false");
				}
			} catch (Exception e) {
				e.printStackTrace();
			}

		} else if (command.equals("deleteSchedule")) {
			
			ScheduleService service = ScheduleService.getInstance();
			String id = request.getParameter("id");
			
		System.out.println(id);
			int result = service.deleteScheduleService(Integer.parseInt(id));
			PrintWriter out = response.getWriter();
			if (result > 0) {
				out.write("success");
			} else {
				out.write("false");
			}
		}else if (command.equals("listScheduleAPT")) {
			response.setCharacterEncoding("utf-8");
			ScheduleService service = ScheduleService.getInstance();
			Schedule schedule = new Schedule();
			PrintWriter out = response.getWriter();
	        HttpSession session = request.getSession();
	        
	        try {
				Member member = (Member) session.getAttribute("member");
				List<Schedule> list = service.listScheduleAPTService(member.getApt_seq());

				JSONObject obj = new JSONObject();
				JSONArray arr = new JSONArray();
				
				for (Schedule s : list) {
					JSONObject tmp = new JSONObject();
					tmp.put("_id", s.getSchedule_Seq());
					tmp.put("contents", s.getContents());
					tmp.put("start", s.getStart_Date());
					tmp.put("end", s.getEnd_Date());
					tmp.put("title", s.getTitle());
					tmp.put("allDay", "false");
					tmp.put("dong", s.getDong());
					tmp.put("backgroundColor", s.getBackgroundColor());
					arr.add(tmp);
				}
				obj.put("data", arr);
				out.print(arr.toString());
				out.flush();
			
			} catch (Exception e) {
				e.printStackTrace();
				out.print("false");
				out.flush();
			}
		}else if (command.equals("listScheduleAPT_Dong")) {
				response.setCharacterEncoding("utf-8");
				ScheduleService service = ScheduleService.getInstance();
				Schedule schedule = new Schedule();
				PrintWriter out = response.getWriter();
		        HttpSession session = request.getSession();
		        
		        try {
					Member member = (Member) session.getAttribute("member");
					List<Schedule> list = service.listScheduleApt_Dong_Service(member);

					JSONObject obj = new JSONObject();
					JSONArray arr = new JSONArray();
					
					for (Schedule s : list) {
						JSONObject tmp = new JSONObject();
						tmp.put("_id", s.getSchedule_Seq());
						tmp.put("contents", s.getContents());
						tmp.put("start", s.getStart_Date());
						tmp.put("end", s.getEnd_Date());
						tmp.put("title", s.getTitle());
						tmp.put("allDay", "false");
						tmp.put("dong", s.getDong());
						tmp.put("backgroundColor", s.getBackgroundColor());
						arr.add(tmp);
					}
					obj.put("data", arr);
					out.print(arr.toString());
					out.flush();
				
				} catch (Exception e) {
					e.printStackTrace();
					out.print("false");
					out.flush();
				}
		        } else if (request.equals("scheduelAction.do")) {
					Action action = new ScheduleAction();
					try {
						forward = action.execute(request, response);
					} catch (Exception e) {
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
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			doProcess(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
