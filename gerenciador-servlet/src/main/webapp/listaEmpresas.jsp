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
			
			<%
				List<Empresa> lista = (List<Empresa>) request.getAttribute("listaEmpresas");
				for (Empresa empresa : lista) {
			%>
			<li> <%= empresa.getNome() %> </li>
			<% } %>
		
		</ul>
	</body>
</html>