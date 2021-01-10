<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	
	<c:choose>
		<c:when test="${empty utilisateurs}">
			<div class="row">
			<div class="Alert alert-primary col-7 p-5 mx-auto" role="alert" > 
				<p>Aucun utilisateur n'a pour le moment été ajouté. cliquez ici pour en ajouté</p>   
				<a class="btn btn-outline-info btn-lg mx-auto" href="<%= request.getContextPath() %>/users/add">Ajouter</a>
			</div>
		</div>
		</c:when>
		<c:otherwise>
			<div class="container-fluid">
				<div class="card card-body p-4 m-3">
					<h1>Tableaux des sutlisateurs</h1><hr>
					<table class="table table-striped table-hover table-bordered">
						<thead class="table-primary">
							<tr>
								<th scope="col" >ID</th>
								<th scope="col" >Nom</th>
								<th scope="col" >Prénom</th>
								<th scope="col" >Login</th>
								<th scope="col" >Password</th>
								<th scope="col" colspan="2">Actions</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${utilisateurs}" var="user">
								<tr>
									<td>${user.id}</td>
									<td>${user.nom}</td>
									<td>${user.prenom}</td>
									<td>${user.login}</td>
									<td>${user.password}</td>
									<td><a href="update?id=${user.id}" class="btn btn-success btn-sm btn-block">Modifier</a></td>
									<td><a href="delete?id=${user.id}" class="btn btn-danger btn-sm btn-block">Supprimer</a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</c:otherwise>		
	</c:choose>

<%@ include file="../layout/footer.jsp" %>
