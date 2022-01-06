<%@page import="java.util.Locale"%>
<%@ page import="java.text.SimpleDateFormat,java.text.DateFormat"%>
<%@ page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="refresh">
	<meta charset="UTF-8">
<title></title>
</head>
<body>
	<%= new SimpleDateFormat("EEEEE dd MMMMM yyyy hh:mm:ss",
								Locale.forLanguageTag(request.getParameter("lang")))
									.format(new Date()) %>
</body>
</html>