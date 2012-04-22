<%--
  Created by IntelliJ IDEA.
  User: marce
  Date: 4/21/12
  Time: 11:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <div>
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
    </div>