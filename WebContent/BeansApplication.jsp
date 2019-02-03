<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Employee Work Report</title>
</head>
<body>
	<!-- setProperty -->
	<!-- name attribute under setProperty references the id of beans in useBean action  -->
	<jsp:useBean id="emp" class="bean.EmployeeClass">
		<jsp:setProperty name="emp" property="name" value="Mahendra"/>
		<jsp:setProperty name="emp" property="points" value="50"/>
	</jsp:useBean>
	
	<!-- setProperty -->
	<!-- name attribute under setProperty references the id of beans in useBean action  -->
	<p>Name of the Employee:
		<jsp:getProperty name="emp" property="name"/>
	</p>
	<p>Work Performance Points:
		<jsp:getProperty name="emp" property="points"/>
	</p>
</body>
</html>