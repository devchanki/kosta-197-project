package aptogether.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import aptogether.model.ManageFee;
import aptogether.model.ManageFeeService;
import aptogether.model.Member;

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
		ManageFee last = null;
		ManageFee beforeLast = null;
		if (list != null && list.size() >= 2) {
			last = list.get(list.size() - 1);
			beforeLast = list.get(list.size() - 2);

		} else if (list != null && list.size() == 1) {
			last = list.get(0);
			System.out.println(last);

		}
		request.setAttribute("last",last);
		request.setAttribute("beforeLast", beforeLast);
		
		
		forward.setRedirect(false);
		forward.setUrl("/userDashboard.jsp");
		return forward;
	}
}
