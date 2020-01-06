package p;

import java.io.*;
import java.util.Date;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Login extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
			PrintWriter out=response.getWriter();
			String s1 = request.getParameter("uname");
			String s3 = request.getParameter("password");
			HttpSession ses = request.getSession(true);
			
			
			if((s1.equals("abc"))){
				out.print("Welcome"+s1);
				ses.setAttribute("user",s1);
				out.println("<br> login page id= " +ses.getId());
				out.println(ses.getId());
				out.println("<br> Creation Time= ");
				out.println(new Date(ses.getCreationTime()));
				out.println("<br> Last Access Time: ");
				out.println(new Date(ses.getLastAccessedTime()));
				out.println("<br> Maximum Inactive Interval(seconds):");
				out.println("<a href='/Session_Id/2'>visit</a>");
			}
			else {
				RequestDispatcher rd = request.getRequestDispatcher("index.html");				
				out.print("<font color=blue>Either username or password is worng.</font>");
			}
			
		}
	}