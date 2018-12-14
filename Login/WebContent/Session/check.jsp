<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String name=request.getParameter("uname");
	String pwd = request.getParameter("upwd");
	if(name.equals("zhang")&& pwd.equals("123")){
		//response.sendRedirect("success.jsp");
		session.setAttribute("uname",name);
		session.setAttribute("upwd",pwd);
	request.getRequestDispatcher("welcom.jsp").forward(request, response);
	}
	else{
		response.sendRedirect("login.jsp");
	}
%>
</body>
</html>