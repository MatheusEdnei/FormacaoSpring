<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="br.com.alura.gerenciador.modelo.Empresa" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Lista de Empresas</title>
	</head>
	<body>
		<c:import url="logout-parcial.jsp"/>
		<a href="entrada?acao=Logout">Sair</a>
		</br></br></br>
		
		Usuario Logado: ${usuarioLogado.login}
		
		<c:if test="${not empty empresa}"> 
			Empresa ${empresa} cadastrada com sucesso.
		</c:if>

		<ul>
			<c:forEach items="${listaEmpresas}" var="empresa">
				<fmt:formatDate value="${empresa.dataAbertura}" pattern="dd/MM/yyyy" var="data"/>
				<li>
					${empresa.nome} - ${data}
					<a href="/gerenciador-servlet/mostraEmpresa?id=${empresa.id}">Editar</a>
					<a href="/gerenciador-servlet/removeEmpresa?id=${empresa.id}">Remove</a>
				</li>		
			</c:forEach>
		</ul>

	</body>
</html>