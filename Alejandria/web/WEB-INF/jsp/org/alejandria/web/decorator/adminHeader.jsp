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


<div align="right" class="sesion">
    <div class="sesionButton inline">
        <span class="ui-icon ui-icon-person" style="display:inline-block;"></span>
        <a href="#" id="iconSesion" title="Perfil de..">{username}</a>
    </div>
    <button id="iconConfig" class="sesionButton"><fmt:message key="org.alejandria.web.header.configuration" bundle="${label}"/></button>
    <button id="iconClose" class="sesionButton"><fmt:message key="org.alejandria.web.header.close-session" bundle="${label}"/></button>
</div>
<div>
    <div>
        <h1 id="logo" >
            <span class=""><fmt:message key="org.alejandria.web.common.bookstore" bundle="${label}"/></span>
            <span class="blue">★</span>
            <span class="gray"><fmt:message key="org.alejandria.web.common.name" bundle="${label}"/></span>
        </h1>
        <h2 id="slogan">
            <span class="gray"><fmt:message key="org.alejandria.web.common.slogan" bundle="${label}"/></span>
        </h2>
    </div>
</div>