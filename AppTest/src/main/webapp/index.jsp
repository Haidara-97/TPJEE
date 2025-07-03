<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body {
  font-family: sans-serif;
  background-color: #f0f0f0;
  padding: 40px;
}

.forme {
  background-color: white;
  padding: 20px;
  border: 1px solid #ccc;
  width: 300px;
  margin: auto;
  border-radius: 5px;
}

label {
  display: block;
  margin-bottom: 5px;
  font-weight: bold;
}

input[type="text"] {
  width: 100%;
  padding: 8px;
  margin-bottom: 15px;
  border: 1px solid #aaa;
  border-radius: 3px;
  box-sizing: border-box;
}

#button {
  width: 100%;
  padding: 8px;
  background-color: gray;
  color: white;
  border: none;
  border-radius: 3px;
  cursor: pointer;
}

#button:hover {
  background-color: #1b5fbf;
}

</style>
</head>
<body >
<div class="forme" >
<form action="UserServlet" method="POST">
<label for=nom > Nom :</label><br>
        <input type="text" id="nom" name="nom"><br><br>
<label for=email> Email :</label> <br>
        <input type="text" id= "email" name="email"><br><br>
        <input type = "submit" id="button" value= Enregistrer>        
</form>
</div>
</body>
</html>