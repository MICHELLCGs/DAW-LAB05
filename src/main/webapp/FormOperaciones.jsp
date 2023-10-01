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

    <h1 class="display-4">Calculadora</h1>
    <form action="Controlador" method="post">
        <label for="numero1">Número 1:</label>
        <input type="text" id="numero1" name="numero1" required><br><br>

        <label for="numero2">Número 2:</label>
        <input type="text" id="numero2" name="numero2" required><br><br>

        <label for="operacion">Operación:</label>
        <select id="operacion" name="operacion">
            <option value="suma">Suma</option>
            <option value="resta">Resta</option>
            <option value="multiplicacion">Multiplicación</option>
            <option value="division">División</option>
        </select><br><br>

        <input class="btn btn-dark" type="submit" value="Calcular">
    </form>
            
</center>
</body>
</html>

