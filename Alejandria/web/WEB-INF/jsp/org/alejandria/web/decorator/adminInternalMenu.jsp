<%--
  Created by IntelliJ IDEA.
  User: marce
  Date: 4/21/12
  Time: 11:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!-- fmt:setLocale value="es"/-->
<fmt:setBundle basename="org.alejandria.web.i18n.text.label" var="label" />


    <h1><fmt:message key="org.alejandria.web.admin.internalMenu.catalogue.general.title" bundle="${label}"/></h1>
    <ul class="sidemenu">
        <li><a href="#"><fmt:message key="org.alejandria.web.admin.internalMenu.catalogue.general.user" bundle="${label}"/></a></li>
        <li><a href="#"><fmt:message key="org.alejandria.web.admin.internalMenu.catalogue.general.secretQuestion" bundle="${label}"/></a></li>
        <li><a href="#"><fmt:message key="org.alejandria.web.admin.internalMenu.catalogue.general.country" bundle="${label}"/></a></li>
        <li><a href="#"><fmt:message key="org.alejandria.web.admin.internalMenu.catalogue.general.state" bundle="${label}"/></a></li>
        <li><a href="#"><fmt:message key="org.alejandria.web.admin.internalMenu.catalogue.general.city" bundle="${label}"/></a></li>
    </ul>

    <h1><fmt:message key="org.alejandria.web.admin.internalMenu.catalogue.books.title" bundle="${label}"/></h1>
    <ul class="sidemenu">
        <li><a href="#"><fmt:message key="org.alejandria.web.admin.internalMenu.catalogue.books.book" bundle="${label}"/></a></li>
        <li><a href="#"><fmt:message key="org.alejandria.web.admin.internalMenu.catalogue.books.author" bundle="${label}"/></a></li>
        <li><a href="#"><fmt:message key="org.alejandria.web.admin.internalMenu.catalogue.books.editorial" bundle="${label}"/></a></li>
    </ul>