<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
                <link rel="stylesheet" 
              href="webjars/bootstrap/5.1.0/css/bootstrap.min.css" type="text/css" />
    </head>
<body><center>
    <h1 class="display-4">Resultado de la Operación</h1>
    <p>Número 1: <%= request.getAttribute("numero1") %></p>
    <p>Número 2: <%= request.getAttribute("numero2") %></p>
    <p>Operación: <%= request.getAttribute("operacion") %></p>
    <p>Resultado: <%= request.getAttribute("resultado") %></p>
    <% if (request.getAttribute("error") != null) { %>
        <p style="color: red;"><%= request.getAttribute("error") %></p>
    <% } %>
    </center>
</body>
</html>
