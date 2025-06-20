<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Erreur</title>
</head>
<body>
<h1>Une erreur est survenue</h1>
<p>Désolé, une erreur s'est produite lors du traitement de votre demande.</p>
<p>Message d'erreur: <%= exception != null ? exception.getMessage() : "Champs nom ou email vides" %></p>
<a href="index.jsp">Retour au formulaire</a>
</body>
</html>