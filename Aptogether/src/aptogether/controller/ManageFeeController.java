package aptogether.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import aptogether.action.Action;
import aptogether.action.ActionForward;
import aptogether.model.ManageFee;
import aptogether.model.ManageFeeService;
import aptogether.model.Member;

@WebServlet(asyncSupported = true, urlPatterns = { "/manageFee/*" })
public class ManageFeeController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ManageFeeController() {
		super();
	}

	public void doProcess(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String requestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String command = requestURI.substring(contextPath.length() + 12);

		Action action = null;
		ActionForward forward = null;

		if(command.equals("findMemberSeq")) {
			ManageFeeService service = ManageFeeService.getInstance();
			response.setCharacterEncoding("utf-8");
			
			String dong = request.getParameter("dong");
			String ho = request.getParameter("ho");
			Member member = new Member(dong, ho);
			Member m = service.findMemberSeqService(member);
			
			PrintWriter out = response.getWriter();
			
			JSONObject obj = new JSONObject();
			JSONArray arr = new JSONArray();
			
			obj.put("member_seq", m.getMember_seq());
			obj.put("dong", m.getDong());
			obj.put("ho", m.getHo());
			
			System.out.println(obj.toString());
			out.print(obj.toString());
			out.flush();
		}
		else if(command.equals("registerManageFee")) {
			response.setCharacterEncoding("utf-8");
			ManageFeeService service = ManageFeeService.getInstance();
			
			String member_seq = request.getParameter("member_seq");
			String general_fee = request.getParameter("general_fee");
			String security_fee = request.getParameter("security_fee");
			String cleaning_fee = request.getParameter("cleaning_fee");
			String fumigation_fee = request.getParameter("fumigation_fee");
			String lift_maintenance_fee = request.getParameter("lift_maintenance_fee");
			String electricity_fee = request.getParameter("electricity_fee");
			String water_fee = request.getParameter("water_fee");
			String heating_fee = request.getParameter("heating_fee");
			
			ManageFee manage_Fee = new ManageFee(Integer.parseInt(member_seq), Integer.parseInt(general_fee) , 
																							Integer.parseInt(security_fee), Integer.parseInt(cleaning_fee), 
																							Integer.parseInt(fumigation_fee), Integer.parseInt(lift_maintenance_fee), 
																							Integer.parseInt(electricity_fee), Integer.parseInt(water_fee),
																							Integer.parseInt(heating_fee));
			System.out.println(manage_Fee.toString());
			 int result = service.insertManageFeeService(manage_Fee);
			 
	         PrintWriter out = response.getWriter();
	         if (result > 0) {
	            out.write("success");
	            out.flush();
	         } else {
	            out.write("false");
	            out.flush();
	         }
					
		
		}
		else if(command.equals("showListManageFee")) {
			response.setCharacterEncoding("utf-8");
			ManageFeeService service = ManageFeeService.getInstance();
			ManageFee manage_Fee = new ManageFee();
			
			List<ManageFee> list = service.listManageFeeService(1);
			
	         PrintWriter out = response.getWriter();

	         JSONObject obj = new JSONObject();
	         JSONArray arr = new JSONArray();
	         
	         for (ManageFee mf : list) {
	            JSONObject tmp = new JSONObject();
	            tmp.put("member_seq", mf.getMember_seq());
	            tmp.put("general_fee", mf.getGeneral_fee());
	            tmp.put("security_fee", mf.getSecurity_fee());
	            tmp.put("cleaning_fee", mf.getCleaning_fee());
	            tmp.put("fumigation_fee", mf.getFumigation_fee());
	            tmp.put("lift_maintenance_fee", mf.getLift_maintenance_fee());
	            tmp.put("electricity_fee", mf.getElectricity_fee());
	            tmp.put("water_fee", mf.getWater_fee());
	            tmp.put("heating_fee", mf.getHeating_fee());
	            arr.add(tmp);
	         }
	         obj.put("data", arr);
	         System.out.println(obj.toString());
	         out.print(arr.toString());
	         out.flush();
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
