<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcom</title>
</head>
<body>
欢迎您！
<%
String name =(String )session.getAttribute("uname");
if(name==null){
	response.sendRedirect("login.jsp");

	
}
else{
	
	out.print(name);
	
	%>
	<a href="invalidate.jsp">注销</a>
	
	<%
}
%>
</body>
</html>