<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="br.com.alura.gerenciador.model.Empresa" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Lista de Empresas</title>
	</head>
	<body>

		<ul>
			<c:forEach items="${empresas}" var="empresa">
				<fmt:formatDate value=""/>
				<li>${empresa.nome} ${empresa.dataAbertura}</li>		
			</c:forEach>
		</ul>

	</body>
</html>