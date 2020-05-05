package aptogether.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import aptogether.model.ManageFee;
import aptogether.model.ManageFeeService;
import aptogether.model.Member;

public class UserLoginAction implements Action {
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		ActionForward forward = new ActionForward();
		ManageFeeService service = ManageFeeService.getInstance();
		HttpSession session = request.getSession();
		Member member = (Member) session.getAttribute("member");
		
		List<ManageFee> list = service.listManageFeePartService(member, 6);
		request.setAttribute("list", list);
		System.out.println(list.size());
		
		ManageFee last = null;
		ManageFee beforeLast = null;
		ManageFee thirdLast = null;
		ManageFee fourthLast = null;
		ManageFee fifthLast = null;
		ManageFee sixthLast = null;

		if (list != null && list.size() >= 6) {
			last = list.get(0);
			beforeLast = list.get(1);
			thirdLast = list.get(2);
			fourthLast = list.get(3);
			fifthLast = list.get(4);
			sixthLast = list.get(5);
		} else if (list != null && list.size() == 5) {
			last = list.get(0);
			beforeLast = list.get(1);
			thirdLast = list.get(2);
			fourthLast = list.get(3);
			fifthLast = list.get(4);
		} else if (list != null && list.size() == 4) {
			last = list.get(0);
			beforeLast = list.get(1);
			thirdLast = list.get(2);
			fourthLast = list.get(3);
		} else if (list != null && list.size() == 3) {
			last = list.get(0);
			beforeLast = list.get(1);
			thirdLast = list.get(2);
		} else if (list != null && list.size() == 2) {
			last = list.get(0);
			beforeLast = list.get(1);
			System.out.println(last);
			
		} else if (list != null && list.size() == 1) {
			last = list.get(0);
			System.out.println(last);
		}
		
		request.setAttribute("last", last);
		request.setAttribute("beforeLast", beforeLast);
		request.setAttribute("thirdLast", thirdLast);
		request.setAttribute("fourthLast", fourthLast);
		request.setAttribute("fifthLast", fifthLast);
		request.setAttribute("sixthLast", sixthLast);

		forward.setRedirect(false);
		forward.setUrl("/userDashboard.jsp");
		return forward;
	}
}
