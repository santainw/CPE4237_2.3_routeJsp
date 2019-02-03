<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,
				java.util.Locale,
				javax.servlet.*,
				javax.servlet.http.*" %>
<%
	//get the user's Locale
	Locale userLocale = request.getLocale();
	String userCountry = userLocale.getCountry();
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<%
			out.println("Your Country : " + userCountry);
		%>
	</body>
</html>