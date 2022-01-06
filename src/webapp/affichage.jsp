<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Affichage des informations</title>
</head>
<body>
	Nom : ${nom}
	<br>
	Prénom : ${prenom}
	<br>
	Sexe : ${sexe}
	<br>
	Loisirs : <c:forEach items="${loisirs}" var="loisir">
	${loisir},
	</c:forEach>
</body>
</html>