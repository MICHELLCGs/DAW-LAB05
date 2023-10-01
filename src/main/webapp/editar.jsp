<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<!-- Obtén el código del usuario a editar desde la URL -->
<c:set var="codigo" value="${param.codigo}" />

<sql:setDataSource var="xcon" driver="com.mysql.cj.jdbc.Driver"
    url="jdbc:mysql://localhost/test?useSSL=false&serverTimezone=UTC"
    user="root"
    password="123456" />

<sql:query dataSource="${xcon}" sql="select * from t_usuarios where codigo = ?" var="userData">
    <sql:param value="${codigo}" />
</sql:query>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
                <link rel="stylesheet" 
              href="webjars/bootstrap/5.1.0/css/bootstrap.min.css" type="text/css" />
    </head>
    <center>
        <h1 class="display-1">Edita los datos</h1>
        <div class="card" style="width: 35rem;">
<c:forEach var="row" items="${userData.rows}">
    <form action="RespuestaEdicion.jsp" method="post" class="form-group">
        
        <input type="hidden" name="codigo" value="${row.codigo}" />
        <label for="exampleInputEmail1">Nombre</label>
        <input style="width: 30rem;" type="text" class="form-control" aria-describedby="emailHelp" name="nombre" value="${row.nombre}" /><br />
        <label for="">Clave</label>
        <input style="width: 30rem;" type="password" name="clave" value="${row.clave}"  class="form-control" /><br />
        <label for="exampleInputEmail1">Estado</label>
        <select name="estado" class="form-control" style="width: 30rem;">
            <option value="A" ${row.estado == 'A' ? 'selected' : ''}>Activo</option>
            <option value="X" ${row.estado == 'X' ? 'selected' : ''}>Inactivo</option>
        </select><br />
        <input type="submit" class="btn btn-dark" value="Guardar" />
        <a href="jstl_sql_a.jsp">Cancelar</a>
    </form>
</c:forEach>
            </div>
        </center>
