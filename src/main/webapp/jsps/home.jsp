<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.net.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Sample- Home Page</title>
<link href="https://www.turing.com/blog/wp-content/uploads/2022/08/6-Best-DevOps-Practices-to-Know-scaled.jpg" rel="icon">
</head>
</head>
<body>
<h1 align="center">Welcome to Sample Application for DevOps POC</h1>
<hr>
<br>
	<h1><h3> Server Side IP Address </h3><br>

<% 
String ip = "";
InetAddress inetAddress = InetAddress.getLocalHost();
ip = inetAddress.getHostAddress();
out.println("Server Host Name :: "+inetAddress.getHostName()); 
%>
<br>
<%out.println("Server IP Address :: "+ip);%>
</h1>
<br>
<div style="text-align: center;">
	<span>
		<img src="https://www.turing.com/blog/wp-content/uploads/2022/08/6-Best-DevOps-Practices-to-Know-scaled.jpg" alt="" width="100">
	</span>
	
</div>
<hr>
	<p> DevOps POC </p>
<hr>
<hr>

</body>
</html>
