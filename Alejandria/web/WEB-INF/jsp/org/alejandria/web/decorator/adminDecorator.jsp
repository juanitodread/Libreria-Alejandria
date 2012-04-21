<%--
  Created by IntelliJ IDEA.
  User: marce
  Date: 4/21/12
  Time: 12:12 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
    <title>Librería Alejandría - <sitemesh:write property='title'/></title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="css/DecoratorStyle.css" type="text/css" />
    <link type="text/css" href="css/smoothness/jquery-ui-1.8.19.custom.css" rel="stylesheet" />

    <script type="text/javascript" charset="UTF-8" src="js/jquery-1.7.2.min.js" ></script>
    <script type="text/javascript" charset="UTF-8" src="js/jquery-ui-1.8.19.custom.min.js" ></script>
    <script type="text/javascript" charset="UTF-8" src="js/decorator.js" ></script>

    <sitemesh:write property='head'/>
</head>
<body>
<div id="wrap">
    <div id="header">
        <div align="right" class="sesion">
            <p>
            <div class="sesionButton inline">
                <span class="ui-icon ui-icon-person" style="display:inline-block;"></span>
                <a href="#" id="iconSesion" title="Perfil de..">Marcela Sena</a>
            </div>
            <button id="iconConfig" class="sesionButton">Configuración</button>
            <button id="iconClose" class="sesionButton">Cerrar Sesión</button>
            </p>
        </div>
        <div>
            <div>
                <h1 id="logo" >Librería<span class="blue">✱</span><span class="gray">Alejandría</span></h1>
                <h2 id="slogan">Lee como los mejores en...</h2>
            </div>
            <!--<div>
                <form method="post" class="searchform" action="http://www.free-css.com/">
                    <p class="margin">
                        <input type="text" name="search_query" size="25" />
                        <button id="iconSearch">Buscar</button>
                        <br/>
                        <input type="checkbox" name="chkFiltro"/><label class="gray">Título</label>
                        <input type="checkbox" name="chkFiltro"/><label class="gray">Autor</label>
                        <input type="checkbox" name="chkFiltro"/><label class="gray">Editorial</label>
                    </p>
                </form>
            </div>
        </div>-->
    </div>
    <div id="menu">
        <ul>
            <li id="menuHome" class="current"><a href="#">Home</a></li>
        </ul>
    </div>
    <sitemesh:write property='body'/>
</div>
<div id="footer">
    <p> &copy; copyright 2012 <strong>Librerí Alejandría</strong>&nbsp;&nbsp; Design by: <a href="http://www.styleshout.com/">styleshout</a> | Valid: <a href="http://validator.w3.org/check/referer">XHTML</a> | <a href="http://jigsaw.w3.org/css-validator/check/referer">CSS</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="http://www.free-css.com/">Home</a> | <a href="http://www.free-css.com/">Sitemap</a> | <a href="http://www.free-css.com/">Home</a> </p>
</div>
</body>
</html>