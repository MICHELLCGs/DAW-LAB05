<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
                <link rel="stylesheet" 
              href="webjars/bootstrap/5.1.0/css/bootstrap.min.css" type="text/css" />
    </head
<c:set var="codigo" value="${param.codigo}" />

<sql:setDataSource var="xcon" driver="com.mysql.cj.jdbc.Driver"
    url="jdbc:mysql://localhost/test?useSSL=false&serverTimezone=UTC"
    user="root"
    password="123456" />

<sql:update dataSource="${xcon}" sql="delete from t_usuarios where codigo = ?">
    <sql:param value="${codigo}" />
</sql:update>

<!-- Redirige de nuevo a la página de lista de usuarios -->
<c:redirect url="jstl_sql_a.jsp" />
