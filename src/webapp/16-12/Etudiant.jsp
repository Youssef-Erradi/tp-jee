<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<jsp:useBean id="etudiant" class="beans.Etudiant" scope="request"></jsp:useBean>
	<jsp:setProperty name="etudiant" property="nom" value="Ismail"/>
	<jsp:setProperty name="etudiant" property="prenom" value="Mourabiti"/>
	${etudiant}
</body>
</html>