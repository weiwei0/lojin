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
		request.getRequestDispatcher("success.jsp").forward(request, response);
	}
	else{
		out.print("失败..");
	}
	//hh
%>
</body>
</html>
