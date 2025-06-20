<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.User, java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Détails Utilisateur</title>
</head>
<body>
<%
    // Utilisation directe de la session implicite
    User user = (User) session.getAttribute("user");
    List<User> usersList = (List<User>) session.getAttribute("usersList");
    
    if (user == null) {
        response.sendRedirect("index.jsp");
        return;
    }
%>
<h1>Détails de l'utilisateur</h1>
<p>Nom: <%= user.getNom() %></p>
<p>Email: <%= user.getEmail() %></p>

<h2>Liste des utilisateurs enregistrés</h2>
<ul>
<% if (usersList != null) {
       for (User u : usersList) { %>
    <li><%= u.getNom() %> - <%= u.getEmail() %></li>
<%     }
   } %>
</ul>

<a href="index.jsp">Retour au formulaire</a>
</body>
</html>