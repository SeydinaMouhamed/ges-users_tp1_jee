<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
%>
<nav class="navbar navbar-expand-md navbar-dark bg-dark mt-0">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">Gestion Utilisateur</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
    
        <div class="collapse navbar-collapse" id="navbarsExampleDefault">
            <ul class="navbar-nav me-auto mb-2 mb-md-0">
                <li class="nav-item">
                    <a class="nav-link" href="<%= path %>">Accueil</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="<%= path %>/users/list">Lister</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="<%= path %>/users/add">Ajouter</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<hr>