package aptogether.action;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import aptogether.model.Member;
import aptogether.service.MemberService;

public class SigninAction implements Action {

   @Override
   public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
      // TODO Auto-generated method stub
      ActionForward forward = new ActionForward();
      MemberService service = MemberService.getService();
      try {
         request.setCharacterEncoding("utf-8");
      } catch (Exception e) {
         // TODO: handle exception
         e.printStackTrace();
      }

      String email = request.getParameter("email");
      String password = request.getParameter("password");
      Member member = new Member();
      member.setId(email);
      member.setPassword(password);

      Member resultMember = service.signinService(member);
      HttpSession session = request.getSession();
      System.out.println("member" + resultMember.getType());
      if (resultMember == null) {
         session.invalidate();
         forward.setRedirect(true);
         forward.setUrl("/Aptogether/dist/signin.html");
      } else {
         session.setAttribute("member", resultMember);
         request.setAttribute("member", resultMember);
         if(resultMember.getType() == 1) {
            forward.setRedirect(false);
            forward.setUrl("/dist/userDashboard.jsp");
         }else if(resultMember.getType() == 0) {
            forward.setRedirect(false);
            forward.setUrl("/dist/managerDashBoard.jsp");
         }

      }

      return forward;
   }

}