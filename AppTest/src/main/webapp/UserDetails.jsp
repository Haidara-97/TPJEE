<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.User, java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Détails Utilisateur</title>
<style>
  body {
    font-family: sans-serif;
    background-color: #f9f9f9;
    margin: 40px;
    color: #333;
  }

  h1, h2 {
    color: #2c3e50;
  }

  p {
    font-size: 16px;
    margin: 10px 0;
  }

  ul {
    list-style-type: none;
    padding: 0;
  }

  li {
    background-color: #e6f0ff;
    margin-bottom: 8px;
    padding: 10px;
    border-left: 5px solid #2d89ef;
    border-radius: 4px;
  }

  a {
    display: inline-block;
    margin-top: 20px;
    color: white;
    background-color: #2d89ef;
    padding: 10px 15px;
    text-decoration: none;
    border-radius: 4px;
  }

  a:hover {
    background-color: #1b5fbf;
  }
</style>

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