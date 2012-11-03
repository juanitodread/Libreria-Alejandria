<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
    <title>Librería Alejandría - <tiles:insertAttribute name="title" ignore="true" /></title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="css/DecoratorStyle.css" type="text/css" />
    <link type="text/css" href="css/smoothness/jquery-ui-1.8.19.custom.css" rel="stylesheet" />

    <script type="text/javascript" charset="UTF-8" src="js/jquery-1.7.2.min.js" ></script>
    <script type="text/javascript" charset="UTF-8" src="js/jquery-ui-1.8.19.custom.min.js" ></script>
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
            <li id="menuHome" class="current"><a href="#">Home</a></li>
            <li><a href="#">Lbros</a></li>
            <li><a href="#">Promociones</a></li>
            <li><a href="#">¿Quiénes Somos?</a></li>
            <li><a href="#">Contáctanos</a></li>
            <li><a href="#">Sucursales</a></li>
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