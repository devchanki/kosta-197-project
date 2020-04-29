package aptogether.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import aptogether.model.Member;

@WebFilter("*.jsp")
public class loginFilter implements Filter {

	public loginFilter() {
	}

	public void destroy() {
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest httpServletRequest = (HttpServletRequest) request;
		HttpSession httpSession = httpServletRequest.getSession();
		Member member = null;
		try {
			member = (Member) httpSession.getAttribute("member");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			System.out.println("member casting error");
		}

		HttpServletResponse response1 = (HttpServletResponse) response;

		if (member == null) {
			response1.sendRedirect("/signin.html");
		}

		chain.doFilter(request, response);
	}

	public void init(FilterConfig fConfig) throws ServletException {
	}

}
