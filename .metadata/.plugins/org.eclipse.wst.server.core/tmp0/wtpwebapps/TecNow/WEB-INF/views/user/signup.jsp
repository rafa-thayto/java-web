<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<%-- Header and CSS imports --%>
	<c:import url="../templates/header.jsp"></c:import>
	<c:import url="../templates/css-imports.jsp"></c:import>
	<title>Cadastre-se | TecNow Brasil</title>
</head>
<body class="h-100vh">
	<div class="wrapper">
		<div class="col-sm-12 col-md-8">
		
			<!-- Form Signup -->
			<div id="signup">
				<c:url value="/TecNow/usuario/salvar" var="urlRegisterUser"></c:url>
				<form action="${ urlRegisterUser }" method="POST">
	
					<!-- Input Name -->
					<div class="form-group">
						<label for="inputName"></label>
						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<span class="input-group-text">
									<i class="fas fa-user"></i>
								</span>
							</div>
							<input type="text" name="name" id="inputName" class="form-control">
						</div>
					</div> <!-- End Input Name -->

					<!-- Input Email -->
					<div class="input-group mb-3">
						<label for="inputPassword"></label>
						<div class="input-group-prepend">
							<span class="input-group-text">
								<i class="fas fa-envelope"></i>
							</span>
						</div>
						<input type="email" name="password" id="inputPassword" class="form-control">
					</div> <!-- End Input Email -->
	
					<!-- Input Password -->
					<div class="input-group mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text">
								<i class="fas fa-lock"></i>
							</span>
						</div>
						<input type="password" name="password" id="name" class="form-control">
					</div> <!-- End Input Password -->
	
				</form>
			</div> <!-- End Form Signup -->
			
		</div> <!-- End col-sm-12 col-md-8 -->
	</div> <!-- End Wrapper -->
	
	<%-- JavaScript imports --%>
	<c:import url="../templates/js-imports.jsp"></c:import>
</body>
</html>