<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:url value="/alteraEmpresa" var="linkServletNovaEmpresa"/>
<!DOCTYPE html>
<html>

	<head>
	<meta charset="UTF-8">
	<title>Formulario Nova Empresa</title>
	</head>
	
	<body>
		<c:import url="logout-parcial.jsp"/>
		<fmt:formatDate value="${empresa.dataAbertura}" pattern="dd/MM/yyyy" var="data"/>
		<form action="${linkServletNovaEmpresa}" method="post">
		
			Nome: <input type="text" name="nome" value="${empresa.nome}"/>
			Data Abertura: <input type="text" name="data" value="${data}"/>
			<input type="hidden" name="id" value="${empresa.id}"/>
			<input type="submit"/>
		
		</form>
			
	</body>
	
</html>