<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Insert title here</title>
	</head>
	<body>
	<font color=blue>Scripted Tag</font>
		<br>
		<% 
		out.print("Welcome to JSP");
		String name= request.getParameter("uname");
		out.println("Welcome "+name);
		%>
		<br><br>
	<font color=blue>Expression Tag</font>
		<br> Name
		<%= name %>	<br>
	<font color=blue>Declaration Tag</font>
		<br><br>
		<%! int s = 10;%>
		<br>
		<%= "s="+s %>
	</body>
</html>