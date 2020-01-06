<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="javax.servlet.*,java.sql.*,java.io.*,p.NewConnection" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Query</title>
</head>
<body>
<% 
Connection conn = NewConnection.getCon();
		
try {
	
			
			out.print("Connected to database! again<br>");
			
			
			PreparedStatement ps = conn.prepareStatement("delete from emp where ecode = ?");
			String ecode =request.getParameter("ecode");
			//String ename =request.getParameter("ename");
			
			ps.setString(1,ecode);
			//ps.setString(2,ecode);
			
			int x  = ps.executeUpdate();
			//out.print(x+" rows inserted");
%>
<br>
<%=x+"rows deleted" %>

<%
			Statement sm = conn.createStatement();
			ResultSet rs = sm.executeQuery("select * from emp");
			
%>
<table border=1 bgcolor=lightblue>
<th>ECODE</th><th>EName</th>
<%	
	while(rs.next())
	{
		String f1 =rs.getString(1);
		String f2 = rs.getString(2);
%>
<tr>
<td><%=f1 %></td>
<td><%=f2 %></td>
</tr>
<%	}//end of while
	%>
</table>
<%
	conn.close();
	out.print("<br>Disconnected from database.");
	
	}
catch(Exception e)
{
	e.printStackTrace();
}



%>

</body>
</html>