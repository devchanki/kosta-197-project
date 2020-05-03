package aptogether.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import aptogether.model.Member;
import aptogether.service.MemberService;

public class SignupAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		MemberService service = MemberService.getService();
		ActionForward action = new ActionForward();
		int apt_seq = Integer.parseInt(request.getParameter("aptSeq"));
		String id = request.getParameter("email");
		String password = request.getParameter("password");
		String dong = request.getParameter("dong");
		String ho = request.getParameter("ho");
		String type = request.getParameter("type");
		String name = request.getParameter("name");
		
		Member member = new Member(id, password, apt_seq, dong, ho, Integer.parseInt(type), name);
		System.out.println(member);
		int re = service.signupService(member);
		
		if(re == 1) {
			action.setRedirect(true);
			action.setUrl("/Aptogether/signin.html");
		}else {
			action.setRedirect(true);
			action.setUrl("/Aptogether/dist/404.html");
		}
		return action;
	}

}
