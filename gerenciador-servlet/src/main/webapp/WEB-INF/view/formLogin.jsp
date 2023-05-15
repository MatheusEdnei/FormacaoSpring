<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url value="/entrada" var="linkEntrandaServlet"/>
<!DOCTYPE html>
<html>

	<head>
	<meta charset="UTF-8">
	<title>Formulario Nova Empresa</title>
	</head>
	
	<body>
			
		<form action="${linkEntrandaServlet}" method="post">
		
			Login: <input type="text" name="login"/>
			Senha: <input type="password" name="senha"/>
			
			<input type="submit" name="acao" value="Login"/>
		
		</form>
			
	</body>
	
</html>