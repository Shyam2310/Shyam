package p;

import java.io.*;
import java.util.Date;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class First extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		try {	
			PrintWriter out=response.getWriter();
			out.print("Hey.authentication passed");
			out.println(" Welcome " +request.getParameter("uname"));
			}
			catch(Exception e) {
			}
			
		}
	}
