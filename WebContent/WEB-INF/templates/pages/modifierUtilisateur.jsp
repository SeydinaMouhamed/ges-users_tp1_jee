<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

	
<%@ include file="../layout/header.jsp" %>
	<div class="row">
		<div class="col-6 mx-auto" >
			<div class="card card-body">
				<form method="post" class="form-group p-5">
					<fieldset>
						<legend>Modifier un utilisateur</legend><hr>
						<label>ID</label>
						<input type="text" name="id"  value="${ utilisateur.id }" class="form-control" disabled><br>
						<label>Nom</label>
						<input type="text" name="nom" value="${ utilisateur.nom }" class="form-control"><br>
						<label>Prénom</label>
						<input type="text" name="prenom" value="${ utilisateur.prenom }" class="form-control"><br>
						<label>Login</label>
						<input type="text" name="login" value="${ utilisateur.login }" class="form-control"><br>
						<label>Password</label>
						<input type="password" name="password" value="${ utilisateur.password }" class="form-control"><br>
						<input type="submit" class="btn btn-block btn-info btn-md" value="Modifier">
					</fieldset>
				</form>
			</div>
		</div>
	</div>
<%@ include file="../layout/footer.jsp" %>
