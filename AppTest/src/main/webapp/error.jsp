<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Erreur</title>
<style>
    body {
      font-family: Arial, sans-serif;
      background-color: #fff0f0;
      color: #b30000;
      text-align: center;
      padding: 60px;
    }

    h1 {
      color: #a60000;
      font-size: 28px;
    }

    p {
      font-size: 16px;
      margin: 15px 0;
    }

    a {
      display: inline-block;
      margin-top: 20px;
      padding: 10px 15px;
      background-color: #b30000;
      color: white;
      text-decoration: none;
      border-radius: 5px;
    }

    a:hover {
      background-color: #800000;
    }
  </style>
</head>
<body>
<h1>Une erreur est survenue</h1>
<p>Désolé, une erreur s'est produite lors du traitement de votre demande.</p>
<p>Message d'erreur: <%= exception != null ? exception.getMessage() : "Champs nom ou email vides" %></p>
<a href="index.jsp">Retour au formulaire</a>
</body>
</html>