<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>WELCOME</title>
<link type="text/css" rel="stylesheet" href="/helloworldstruts/css/welcome.css">
</head>
<body>
	<div class="title">
		<p id="message">WELCOME <%=request.getParameter("username")%></p>
		<p>method is <%=request.getMethod()%>.</p>
		<p>from <%=request.getAttribute("from") %></p>
	</div>
	<div class="button" id="filter"><a href="/helloworldstruts/filter.mf">Filter</a></div>
	<div class="button" id="servlet"><a href="/helloworldstruts/">Servlet</a></div>
</body>
</html>