package aptogether.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import aptogether.model.ManageFee;
import aptogether.model.ManageFeeService;
import aptogether.model.Member;
import sun.print.resources.serviceui;

public class UserLoginAction implements Action{
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		ActionForward forward = new ActionForward();
		ManageFeeService service = ManageFeeService.getInstance();
		
		HttpSession session = request.getSession();
		Member member = (Member) session.getAttribute("member");
		
		
		List<ManageFee> list = service.listManageFeePartService(member, 6);
		request.setAttribute("list", list);
		
		
		forward.setRedirect(false);
		forward.setUrl("/userDashboard.jsp");
		return forward;
	}
}
