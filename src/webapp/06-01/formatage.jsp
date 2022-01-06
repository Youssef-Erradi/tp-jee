<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Exemples fmt et fn</title>
	</head>
<body>
<!--  	<fmt:formatNumber pattern="00.00" value="${10/3}"></fmt:formatNumber>
	<br>
	<fmt:formatNumber pattern="00.00" value="4"></fmt:formatNumber>
	
	<br>
	<c:set var="nombre" value="3.1415" />
		<fmt:parseNumber var="n" integerOnly="true" type="number" value="${nombre}"></fmt:parseNumber>
		Le nombre formaté est : <c:out value="${n}"></c:out> 
	<fmt:setLocale value="fr_CA"/>
	<c:set var="amount" value="9850.14115"/>
	<fmt:formatNumber pattern="00.00 MAD" value="214.789"/> <br>
	<fmt:formatNumber value="${amount}" type="currency"/> <br>
	<fmt:formatNumber type="number" groupingUsed="true" value="${amount}"/> <br>
	<fmt:formatNumber type="number" maxIntegerDigits="3" value="${amount}"/> <br>
	<fmt:formatNumber type="number" maxIntegerDigits="6" value="${amount}"/> <br>
	<fmt:formatNumber type="percent" maxIntegerDigits="8" value="${amount}"/> <br>
	<fmt:formatNumber type="number" pattern="###.###$" value="${amount}"/> <br>
	
	<c:set var="date" value="<%=new Date()%>"/>
	<fmt:formatDate type="time" value="${date}"/> <br>
	<fmt:formatDate type="date" value="${date}"/> <br>
	<fmt:formatDate type="both" value="${date}"/> <br>
	<fmt:formatDate type="both" dateStyle="short" timeStyle="short" value="${date}"/> <br>
	<fmt:formatDate type="both" dateStyle="medium" timeStyle="medium" value="${date}"/> <br>
	<fmt:formatDate type="both" dateStyle="long" timeStyle="long" value="${date}"/> <br>

	<c:set var="text" value="Bienvenue à la faculté polydisciplinaire de Taza" />
	<c:if test="${ fn:containsIgnoreCase(text,'Taza') }">
		<p>Chaîne <em>Taza</em> trouvée</p>
	</c:if>
	<c:if test="${ fn:startsWith(text,'Bienvenue') and fn:endsWith(text,'Taza') }">
		<p>le texte commence par <em>Bienvenue</em> et se termine par <em>Taza</em></p>
	</c:if>
	-->

	<c:set var="str" value="Java,Python,Javascript" />
	${str} <br>
	<c:set var="tab" value="${ fn:split(str,',') }" />
	
	<c:forEach items="${tab}" var="element" >
		${element} <br>
	</c:forEach>
	<br>
	<c:set var="str" value="${fn:join(tab,'-')}" />
	str : ${str}<br>
	length : ${fn:length(str)}	<br>
	substring(str,4,8) : ${fn:substring(str,4,8)}<br>
	substringAfter(str,'Java-') : ${fn:substringAfter(str,'Java-')}<br>
	substringBefore(str,'-Python') : ${fn:substringBefore(str,'-Python')}<br>
</body>
</html>