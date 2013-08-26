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


<div>
    <div>
        <p align="center">
            &copy; copyright 2012 <strong><fmt:message key="org.alejandria.web.common.title" bundle="${label}"/></strong>
        </p>
    </div>
    <div class="align-center" style="padding: 10px;">
        <div class="float-left" style="width: 30%;">
            <div class="float-right">
                <h3><fmt:message key="org.alejandria.web.footer.account.title" bundle="${label}"/></h3>
                <p class="align-left">
                    <a href="#"><fmt:message key="org.alejandria.web.footer.account.createAccount" bundle="${label}"/></a> <br/>
                    <a href="#"><fmt:message key="org.alejandria.web.footer.account.shoppingCart" bundle="${label}"/></a> <br/>
                    <a href="#"><fmt:message key="org.alejandria.web.footer.account.recoverPassword" bundle="${label}"/></a> <br/>
                    <a href="#"><fmt:message key="org.alejandria.web.footer.account.manage" bundle="${label}"/></a>
                </p>
            </div>
        </div>
        <div class="float-left" style="width: 30%;">
            <div class="float-right">
                <h3><fmt:message key="org.alejandria.web.footer.politics.title" bundle="${label}"/></h3>
                <p class="align-left">
                    <a href="#"><fmt:message key="org.alejandria.web.footer.politics.privacy" bundle="${label}"/></a> <br/>
                    <a href="#"><fmt:message key="org.alejandria.web.footer.politics.purchase" bundle="${label}"/></a> <br/>
                    <a href="#"><fmt:message key="org.alejandria.web.footer.politics.returns" bundle="${label}"/></a> <br/>
                    <a href="#"><fmt:message key="org.alejandria.web.footer.politics.termsAndConditions" bundle="${label}"/></a>
                </p>
            </div>
        </div>
        <div class="float-left" style="width: 30%;">
            <div class="float-right">
                <h3><fmt:message key="org.alejandria.web.footer.buy.title" bundle="${label}"/></h3>
                <p class="align-left">
                    <a href="#"><fmt:message key="org.alejandria.web.footer.buy.howToBuy" bundle="${label}"/></a> <br/>
                    <a href="#"><fmt:message key="org.alejandria.web.footer.buy.payment" bundle="${label}"/></a>
                </p>
            </div>
        </div>
    </div>
</div>
