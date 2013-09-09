<%--
  Created by IntelliJ IDEA.
  User: marce
  Date: 4/21/12
  Time: 12:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!-- fmt:setLocale value="es"/-->
<fmt:setBundle basename="org.alejandria.web.i18n.text.label" var="label" />


<html>
<head>
    <title></title>
</head>
<body>
    <h1><span class="ui-icon ui-icon-person" style="display:inline-block;"></span><fmt:message key="org.alejandria.web.rightBar.signIn.title" bundle="${label}"/></h1>
    <div class="margin">
        <form class="searchform" autocomplete="off" method="post" action="<c:url value="j_spring_security_check" />" >
            <label><fmt:message key="org.alejandria.web.rightBar.signIn.user" bundle="${label}"/></label>
            <input type="text" name="j_username" size="15">
            <label><fmt:message key="org.alejandria.web.rightBar.signIn.password" bundle="${label}"/></label>
            <input type="password" name="j_password" size="15"><br/>
            <c:if test="${not empty param.authError}">
                <div class="errorblock" style="color: red;">
                    Your login attempt was not successful, try again.<br /> Caused :
                    ${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}
                </div>
            </c:if>
            <button id="submitUser" name="submitUser"><fmt:message key="org.alejandria.web.rightBar.signIn.accept" bundle="${label}"/></button><br/>
            <a href="#"><fmt:message key="org.alejandria.web.rightBar.signIn.forgottenPassword" bundle="${label}"/></a><br/>
            <a href="#"><fmt:message key="org.alejandria.web.rightBar.signIn.createAccount" bundle="${label}"/></a>
        </form>
    </div>
    <h1><span class="ui-icon ui-icon-cart" style="display:inline-block;"></span><fmt:message key="org.alejandria.web.rightBar.cart.title" bundle="${label}"/></h1>
    <p>
        <label><fmt:message key="org.alejandria.web.rightBar.cart.items" bundle="${label}"/>: </label><label class="blue">6</label><br/>
        <label><fmt:message key="org.alejandria.web.rightBar.cart.total" bundle="${label}"/>: </label><label class="blue">$345.69</label><br/><br/>
        <a href="#"><fmt:message key="org.alejandria.web.rightBar.cart.shoppingCart" bundle="${label}"/></a>
    </p>
</body>
</html>