<%--
  User: @juanitodread
  Date: 3/31/12
  Time: 8:53 PM
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Pantalla Principal</title>
</head>
<body>
    <h3>Prueba Spring MVC :) - Bienvenid@</h3>

    <c:forEach items="${p}" var="pai" >
        <p>${pai.id} -- ${pai.pais} -- ${pai.codigo} -- ${pai.activo} -- ${pai.fechaCreacion}</p>
    </c:forEach>

    <br/>
    <c:forEach items="${PAISES}" var="pais" >
         <p>${pais.id} -- ${pais.pais} -- ${pais.codigo} -- ${pais.activo} -- ${pais.fechaCreacion}</p>
    </c:forEach>
</body>
</html>