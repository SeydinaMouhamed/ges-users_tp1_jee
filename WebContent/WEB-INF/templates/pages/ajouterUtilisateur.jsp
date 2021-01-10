<%@ include file="../layout/header.jsp" %>
	<div class="row">
		<div class="col-6 mx-auto" >
			<div class="card card-body p-5">
				<form method="post" class="form-group">
					<fieldset>
						<legend>Ajout d'un utilisateur</legend><hr>
						<label for="nom">Nom</label>
						<input type="text" name="nom" class="form-control" id="nom"><br>	
						<label for="prenom">Prénom</label>
						<input type="text" name="prenom" class="form-control" id="prenom"><br>
						<label for="login">Login</label>
						<input type="text" name="login" class="form-control" id="login"><br>
						<label for="passwordd">password</label>
						<input type="password" name="password" class="form-control" id="password"><br>
						<input type="submit" class="btn btn-block btn-info btn-md" value="Ajouter">
					</fieldset>
				</form>
			</div>
		</div>
	</div>
<%@ include file="../layout/footer.jsp" %>
	