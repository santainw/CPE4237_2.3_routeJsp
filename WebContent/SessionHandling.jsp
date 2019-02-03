<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,
				java.util.*" %>
<%
	// creation time of session
	Date create = new Date(session.getCreationTime());

	Integer visitCount = new Integer(0);
	String key = new String("visitCount");
	
	//for new visitor
	if(session.isNew())
	{
		session.setAttribute(key, visitCount);
	}
	if(session.getAttribute(key) == null)
	{
		visitCount = visitCount + 1;
	}
	else
	{
		visitCount = (Integer)session.getAttribute(key);
		visitCount = visitCount + 1;
	}
	
	session.setAttribute(key,visitCount);
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Session Tracking</title>
	</head>
	<body>
		<h1>Session Tracking</h1>
		<table border="1">
			<tr>
				<th>Session Information</th>
				<th>Value</th>
			</tr>
			<tr>
				<td>id</td>
				<td><% out.print(create); %></td>
			</tr>
			
			<tr>
				<td>Number of visits</td>
				<td><% out.print(visitCount); %></td>
			</tr>
		</table>
	</body>
</html>