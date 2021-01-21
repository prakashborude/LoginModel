<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%

response.setHeader("cache-control", "no-store,no-cache,must-revaluate"); //http-1.1 
response.setHeader("pragma", "no-cache");//http 1.0
response.setHeader("Expires", "0"); //for proxies or proxy server
	if(session.getAttribute("username")==null)
		{
		
			response.sendRedirect("login.jsp");
		}
	%>
	
	 Welcome ${username};
	 <a href ="videos.jsp">videos here</a>
	 <br>
	<form action="logout" method="post">
		<input type="submit" value="Logout">
	
	</form>
	
	
</body>
</html>