package p;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Logout extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

			PrintWriter out=response.getWriter();
			
			HttpSession session = request.getSession(false);
			
			String n=(String)session.getAttribute("user");
			out.print("<br>Hello " +n);
			out.print("<br>login out page ID= " +session.getId());
			
			session.invalidate();
			}
			
		}
