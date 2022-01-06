<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<% 	List<String> liste = new ArrayList<String>();
		liste.add("Java");
		liste.add("Javascript");
		liste.add("Python");
		request.setAttribute("liste", liste);
	%>
	
	${liste}
</body>
</html>