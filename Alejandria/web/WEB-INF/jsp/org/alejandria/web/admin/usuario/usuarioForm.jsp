<%--
  Created by IntelliJ IDEA.
  User: marce
  Date: 4/22/12
  Time: 11:43 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!-- fmt:setLocale value="es"/-->
<fmt:setBundle basename="org.alejandria.web.i18n.text.label" var="label" />

<script type="text/javascript" charset="UTF-8" src="<c:url value="/js/admin/usuario.js"/>" ></script>
    <div id="main-admin">
        <div>
            <h1><fmt:message key="org.alejandria.web.admin.content.user.title" bundle="${label}"/></h1>
            <form name="userForm" id="userForm" autocomplete="off" action="<c:url value="/admin/user/saveUser.htm"/>" method="post">
                <div class="margin">
                    <div class="boxLabel">
                        <label for="txtName"><fmt:message key="org.alejandria.web.admin.content.user.form.name" bundle="${label}"/></label>
                    </div>
                    <div class="boxInput">
                        <input type="text" id="txtName" name="txtName" size="30" />
                    </div><br/>

                    <div class="boxLabel">
                        <label for="txtFirstNameP"><fmt:message key="org.alejandria.web.admin.content.user.form.lastNameP" bundle="${label}"/></label>
                    </div>
                    <div class="boxInput">
                        <input type="text" id="txtFirstNameP" name="txtFirstNameP" size="30" />
                    </div><br/>

                    <div class="boxLabel">
                        <label for="txtFirstNameM"><fmt:message key="org.alejandria.web.admin.content.user.form.lastNameM" bundle="${label}"/></label>
                    </div>
                    <div class="boxInput">
                        <input type="text" id="txtFirstNameM" name="txtFirstNameM" size="30" />
                    </div><br/>

                    <div class="boxLabel">
                        <label for="txtEmail"><fmt:message key="org.alejandria.web.admin.content.user.form.email" bundle="${label}"/></label>
                    </div>
                    <div class="boxInput">
                        <input type="text" id="txtEmail" name="txtEmail" size="30" />
                    </div><br/>

                    <div class="boxLabel">
                        <label for="txtUsername"><fmt:message key="org.alejandria.web.admin.content.user.form.user" bundle="${label}"/></label>
                    </div>
                    <div class="boxInput">
                        <input type="text" id="txtUsername" name="txtUsername" size="30" />
                    </div><br/>

                    <div class="boxLabel">
                        <label for="txtPassword"><fmt:message key="org.alejandria.web.admin.content.user.form.password" bundle="${label}"/></label>
                    </div>
                    <div class="boxInput">
                        <input type="password" id="txtPassword" name="txtPassword" size="30" />
                    </div><br/>

                    <div class="boxLabel">
                        <label for="cmbSecretQuestion"><fmt:message key="org.alejandria.web.admin.content.user.form.secretQuestion" bundle="${label}"/></label>
                    </div>
                    <div class="boxInput">
                        <select id="cmbSecretQuestion" name="cmbSecretQuestion">
                                <option value="-1"><fmt:message key="org.alejandria.web.admin.common.select" bundle="${label}"/></option>
                            <c:forEach items="${secretQuestions}" var="secretQuestion">
                                <option value="${secretQuestion.id}">${secretQuestion.preguntaSecreta}</option>
                            </c:forEach>
                        </select>
                    </div><br/>

                    <div class="boxLabel">
                        <label for="txtSecretAnswer"><fmt:message key="org.alejandria.web.admin.content.user.form.secretAnswer" bundle="${label}"/></label>
                    </div>
                    <div class="boxInput">
                        <input type="text" id="txtSecretAnswer" name="txtSecretAnswer" size="30" />
                    </div><br/>

                    <div class="boxLabel">
                        <label for="cmbCountry"><fmt:message key="org.alejandria.web.admin.content.user.form.country" bundle="${label}"/></label>
                    </div>
                    <div class="boxInput">
                        <select id="cmbCountry" name="cmbCountry">
                                <option value="-1"><fmt:message key="org.alejandria.web.admin.common.select" bundle="${label}"/></option>
                            <c:forEach items="${countries}" var="country">
                                <option value="${country.id}">${country.pais}</option>
                            </c:forEach>
                        </select>
                    </div><br/>

                    <div class="boxLabel">
                        <label for="cmbState"><fmt:message key="org.alejandria.web.admin.content.user.form.state" bundle="${label}"/></label>
                    </div>
                    <div class="boxInput">
                        <select id="cmbState" name="cmbState">
                            <option value="-1"><fmt:message key="org.alejandria.web.admin.common.select" bundle="${label}"/></option>
                        </select>
                    </div><br/>

                    <div class="boxLabel">
                        <label for="cmbTown"><fmt:message key="org.alejandria.web.admin.content.user.form.city" bundle="${label}"/></label>
                    </div>
                    <div class="boxInput">
                        <select id="cmbTown" name="cmbTown">
                            <option value="-1"><fmt:message key="org.alejandria.web.admin.common.select" bundle="${label}"/></option>
                        </select>
                    </div><br/>

                    <button id="submitUser" name="submitUser"><fmt:message key="org.alejandria.web.admin.common.button.save" bundle="${label}"/></button>
                </div>
            </form>
        </div>
        <br />
        <div id="grid" style="width: 620px">
            <table id="userGrid"></table>
            <div id="pager"></div>
        </div>
    </div>