package aptogether.model;

import javax.servlet.http.HttpServletRequest;

public class Manage_Fee_Service {
	private static Manage_Fee_Service service = new Manage_Fee_Service();
	private static Manage_Fee_Dao dao;
	public static Manage_Fee_Service getInstance() {
		dao = Manage_Fee_Dao.getInstance();
		return service;
	}
	
	
	public int insertManageFeeService(HttpServletRequest request)throws Exception{
		request.setCharacterEncoding("utf-8");
		
		Manage_Fee manage_Fee = new Manage_Fee();
		manage_Fee.setGeneral_fee(Integer.parseInt(request.getParameter("general_fee")));
		manage_Fee.setSecurity_fee(Integer.parseInt(request.getParameter("security_fee")));
		manage_Fee.setCleaning_fee(Integer.parseInt(request.getParameter("cleaning_fee")));
		manage_Fee.setFumigation_fee(Integer.parseInt(request.getParameter("fumigation_fee")));
		manage_Fee.setLift_maintenance_fee(Integer.parseInt(request.getParameter("lift_maintenance_fee")));
		manage_Fee.setElectricity_fee(Integer.parseInt(request.getParameter("electricity_fee")));
		manage_Fee.setWater_fee(Integer.parseInt(request.getParameter("water_fee")));
		manage_Fee.setHeating_fee(Integer.parseInt(request.getParameter("heating_fee")));
		
		return dao.insertManageFee(manage_Fee);
	}
}
