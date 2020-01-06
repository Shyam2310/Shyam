<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="a" scope="session" class="p.Bean1">
</jsp:useBean>
<jsp:setProperty property="*" name="a"/>
<jsp:getProperty property="fname" name="a"/>
<jsp:getProperty property="lname" name="a"/>
</body>
</html>