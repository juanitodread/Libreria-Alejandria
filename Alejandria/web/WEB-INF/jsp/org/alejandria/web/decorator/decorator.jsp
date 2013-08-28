<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!-- fmt:setLocale value="es"/-->
<fmt:setBundle basename="org.alejandria.web.i18n.text.label" var="label" />


<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
    <title><fmt:message key="org.alejandria.web.common.title" bundle="${label}"/> - <tiles:insertAttribute name="title" ignore="true" /></title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="css/DecoratorStyle.css" type="text/css" />
    <link type="text/css" href="css/smoothness/jquery-ui-1.8.19.custom.css" rel="stylesheet" />
    <link type="text/css" href="css/smoothness/ui.jqgrid.css" rel="stylesheet" />

    <script type="text/javascript" charset="UTF-8" src="js/jquery-1.7.2/jquery-1.7.2.min.js" ></script>
    <script type="text/javascript" charset="UTF-8" src="js/jquery-1.7.2/jquery-ui-1.8.19.custom.min.js" ></script>
        <script type="text/javascript" charset="UTF-8" src="js/i18n/grid.locale-en.js" ></script>
    <script type="text/javascript" charset="UTF-8" src="js/jquery-1.7.2/jquery.jqGrid.min.js" ></script>
    <script type="text/javascript" charset="UTF-8" src="js/decorator.js" ></script>
    <script type="text/javascript" charset="UTF-8" src="js/ajax/ajaxQuerys.js" ></script>

</head>
<body>
<div id="wrap">
    <div id="header">
        <tiles:insertAttribute name="header" />
    </div>
    <div id="menu">
        <ul>
            <li id="menuHome" class="current">
            	<a href="#"><fmt:message key="org.alejandria.web.menu.home" bundle="${label}"/></a>
            </li>
            <li>
            	<a href="#"><fmt:message key="org.alejandria.web.menu.books" bundle="${label}"/></a>
            </li>
            <li>
            	<a href="#"><fmt:message key="org.alejandria.web.menu.promotions" bundle="${label}"/></a>
            </li>
            <li>
            	<a href="#"><fmt:message key="org.alejandria.web.menu.aboutUs" bundle="${label}"/></a>
            </li>
            <li>
            	<a href="#"><fmt:message key="org.alejandria.web.menu.contact" bundle="${label}"/></a>
            </li>
            <li>
            	<a href="#"><fmt:message key="org.alejandria.web.menu.stores" bundle="${label}"/></a>
            </li>
        </ul>
    </div>
    <div id="content-wrap">
        <tiles:insertAttribute name="body" />
        <div id="rightbar">
            <tiles:insertAttribute name="dynamicUserObj" />
        </div>
    </div>
</div>
<div id="footer">
    <tiles:insertAttribute name="footer" />
</div>
</body>
</html>