<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<c:import url="comptes.xml" varReader="reader">
		<x:parse var="doc" doc="${reader}"></x:parse>
		<x:out select="$doc/comptes/user[2]/nom"/> <br>
		<x:out select="$doc/comptes/user[prenom='Imane']/mail"/> <br>
	</c:import>
	<x:choose>
		<x:when select="$doc/comptes/user[@login='Imad123']">
			Imad123 à déjà un compte, son rôle est : 
			<x:out select="$doc/comptes/user[@login='Imad123']/role"/>
		</x:when>
		<x:otherwise>
			Imad123 n'a pas de compte
		</x:otherwise>
	</x:choose>
</body>
</html>