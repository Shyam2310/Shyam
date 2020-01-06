<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="javax.servlet.*,java.sql.*,java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
Connection conn = null;
String url = "jdbc:mysql://localhost:3306/";
String dbname= "db1";
String driver= "com.mysql.jdbc.Driver";
String username= "root";
String password="root";
try{
Class.forName(driver);
conn= DriverManager.getConnection(url+dbname,username,password);
Statement sm= conn.createStatement();
ResultSet rs= sm.executeQuery("Select * from emp");

%>
<table border= 1 bgcolor= lightblue >
<th>ECODE</th><th> ENAME</th>
<%
while(rs.next())
{
String f1= rs.getString(1);
String f= rs.getString(2);
%>
<tr><td><%=f1 %></td><td><%=f%></td></tr>
<%  } %>
</table>
<%
}//end try
	//out.print("Disconnected to db");
	catch(Exception e){
	e.printStackTrace();
	}
	conn.close();
	%>
	

</body>
</html>