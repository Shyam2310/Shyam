package p;

import java.io.*;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

/**
 * Servlet Filter implementation class Filter1
 */
@WebFilter("/Filter1")
public class Filter1 implements Filter {

	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		PrintWriter out = response.getWriter();
		String str= request.getParameter("uname");
		if (str.contentEquals("abc"))
		chain.doFilter(request, response);
		
		else {
			out.print("Invalid Password");
		}
	}
	
	public void init(FilterConfig fConfig) throws ServletException {
		
	}

}
