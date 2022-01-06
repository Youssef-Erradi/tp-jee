<%@page import="java.util.Objects"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<%@ include file="functions.jsp" %>
	
	<%
		Random r = new Random();
		int t[] = new int[20];
		
		for(int i=0; i<t.length; i++)
			t[i] = r.nextInt(10);
		
		out.println(Arrays.toString(t));
		out.println("<br>");
		out.println(somme(t));
			
	%>
</body>
</html>