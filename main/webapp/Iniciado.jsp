<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% String usuario = (String) request.getAttribute("usu"); %>
<h1><%=usuario %> a iniciado sesion correctamente</h1>
</body>
</html>