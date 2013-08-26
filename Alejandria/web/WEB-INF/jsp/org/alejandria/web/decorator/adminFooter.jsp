<%--
  Created by IntelliJ IDEA.
  User: marce
  Date: 4/22/12
  Time: 11:32 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!-- fmt:setLocale value="es"/-->
<fmt:setBundle basename="org.alejandria.web.i18n.text.label" var="label" />


<div>
    <div>
        <p align="center">
            &copy; copyright 2012 <strong><fmt:message key="org.alejandria.web.common.title" bundle="${label}"/></strong>
        </p>
    </div>
</div>
