<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>THis is First Page</h1>
<jsp:forward page="F2.jsp">
<jsp:param name="ename" value="Shyam"/>
</jsp:forward>

</body>
</html>