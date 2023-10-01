<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<!-- Obtén los datos del formulario de edición -->
<c:set var="codigo" value="${param.codigo}" />
<c:set var="nombre" value="${param.nombre}" />
<c:set var="clave" value="${param.clave}" />
<c:set var="estado" value="${param.estado}" />

<!-- Realiza la actualización en la base de datos -->
<sql:setDataSource var="xcon" driver="com.mysql.cj.jdbc.Driver"
    url="jdbc:mysql://localhost/test?useSSL=false&serverTimezone=UTC"
    user="root"
    password="123456" />

<sql:update dataSource="${xcon}" sql="UPDATE t_usuarios SET nombre=?, clave=?, estado=? WHERE codigo = ?">
    <sql:param value="${nombre}" />
    <sql:param value="${clave}" />
    <sql:param value="${estado}" />
    <sql:param value="${codigo}" />
</sql:update>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
                <link rel="stylesheet" 
              href="webjars/bootstrap/5.1.0/css/bootstrap.min.css" type="text/css" />
    </head>
    <body><center>
        <h1 class="display-4">Respuesta de Edición</h1><br>
    <p>Los datos han sido actualizados correctamente.</p>
    <p>Código: ${codigo}</p>
    <p>Nombre: ${nombre}</p>
    <p>Clave: ${clave}</p>
    <p>Estado: ${estado}</p>
    <a href="jstl_sql_a.jsp">Volver a la lista de usuarios</a>
    </center>
</body>
</html>
