<%--
  Created by IntelliJ IDEA.
  User: marce
  Date: 4/21/12
  Time: 11:25 PM
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
            <span class="blue">✱</span>
            <span class="gray"><fmt:message key="org.alejandria.web.common.name" bundle="${label}"/></span>
        </h1>
        <h2 id="slogan">
            <span class="gray"><fmt:message key="org.alejandria.web.common.slogan" bundle="${label}"/></span>
        </h2>
    </div>
    <div>
        <form method="post" class="searchform" action="http://www.free-css.com/">
            <p class="margin">
                <input type="text" name="search_query" size="25" />
                <button id="iconSearch"><fmt:message key="org.alejandria.web.header.search" bundle="${label}"/></button>
                <br/>
                <input type="checkbox" id="chkTitleFilter" name="chkTitleFilter"/>&nbsp;
                <label for="chkTitleFilter" class="gray"><fmt:message key="org.alejandria.web.common.book.title" bundle="${label}"/></label>
                
                <input type="checkbox" id="chkAuthorFilter" name="chkAuthorFilter"/>
                <label for="chkAuthorFilter" class="gray"><fmt:message key="org.alejandria.web.common.book.author" bundle="${label}"/></label>
                
                <input type="checkbox" id="chkEditorialFilter" name="chkEditorialFilter"/>&nbsp;
                <label for="chkEditorialFilter" class="gray"><fmt:message key="org.alejandria.web.common.book.editorial" bundle="${label}"/></label>
            </p>
        </form>
    </div>
</div>