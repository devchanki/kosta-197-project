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
		System.out.println(requestURI);

		Action action = null;
		ActionForward forward = null;

		if (command.equals("showSchedule")) {
			ScheduleService service = ScheduleService.getInstance();
			List<Schedule> schedule = service.listScheduleService();
			response.setCharacterEncoding("utf-8");
			PrintWriter out = response.getWriter();

			JSONObject obj = new JSONObject();
			JSONArray arr = new JSONArray();
			for (Schedule s : schedule) {
				JSONObject tmp = new JSONObject();
				tmp.put("_id", s.getSchedule_Seq());
				tmp.put("contents", s.getContents());
				tmp.put("start", s.getStart_Date());
				tmp.put("end", s.getEnd_Date());
				tmp.put("title", s.getTitle());
				tmp.put("allDay", "false");
				tmp.put("backgroundColor", s.getBackgroundColor());
				arr.add(tmp);
			}
			obj.put("data", arr);
			out.print(arr.toString());

		} else if (command.equals("insertSchedule")) {
			request.setCharacterEncoding("utf-8");
			ScheduleService service = ScheduleService.getInstance();
			String title = request.getParameter("title");
			String contents = request.getParameter("contents");
			String start = request.getParameter("start_Date");
			String end = request.getParameter("end_Date");
			String apt_Seq = request.getParameter("apt_Seq");
			String backgroundColor =request.getParameter("backgroundColor");
			Schedule schedule = new Schedule(-1, title, contents, start, end, Integer.parseInt(apt_Seq),backgroundColor);
			 System.out.println(schedule.toString());
			int result = service.insertScheduleService(schedule);
			PrintWriter out = response.getWriter();
			if (result > 0) {
				out.write("success");
			} else {
				out.write("false");
			}

		} else if (command.equals("updateSchedule")) {
			request.setCharacterEncoding("utf-8");
			ScheduleService service = ScheduleService.getInstance();
			String id = request.getParameter("id");
			String title = request.getParameter("title");
			String contents = request.getParameter("contents");
			String start = request.getParameter("start_Date");
			String end = request.getParameter("end_Date");
			String apt_Seq = request.getParameter("apt_Seq");
			String backgroundColor =request.getParameter("backgroundColor");
			Schedule schedule = new Schedule(Integer.parseInt(id), title, contents, start, end, Integer.parseInt(apt_Seq),backgroundColor);
			System.out.println(schedule.toString());
			int result = service.updateScheduleService(schedule);
			PrintWriter out = response.getWriter();
			if (result > 0) {
				out.write("success");
			} else {
				out.write("false");
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
