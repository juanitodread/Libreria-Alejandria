<%--
  Created by IntelliJ IDEA.
  User: marce
  Date: 4/22/12
  Time: 11:43 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript" charset="UTF-8" src="<c:out value="${pageContext.request.contextPath}"/>/js/admin/usuario.js" ></script>
    <div id="main-admin">
        <div>
            <h1>Administrar Usuarios</h1>
            <form name="userForm" id="userForm" autocomplete="off" action="<c:out value="${pageContext.request.contextPath}"/>/user/saveUser.htm" method="post">
                <div class="margin">
                    <div class="boxLabel">
                        <label for="txtName">Nombre</label>
                    </div>
                    <div class="boxInput">
                        <input type="text" id="txtName" name="txtName" size="30" />
                    </div><br/>

                    <div class="boxLabel">
                        <label for="txtFirstNameP">Apellido Paterno</label>
                    </div>
                    <div class="boxInput">
                        <input type="text" id="txtFirstNameP" name="txtFirstNameP" size="30" />
                    </div><br/>

                    <div class="boxLabel">
                        <label for="txtFirstNameM">Apellido Materno</label>
                    </div>
                    <div class="boxInput">
                        <input type="text" id="txtFirstNameM" name="txtFirstNameM" size="30" />
                    </div><br/>

                    <div class="boxLabel">
                        <label for="txtEmail">Email</label>
                    </div>
                    <div class="boxInput">
                        <input type="text" id="txtEmail" name="txtEmail" size="30" />
                    </div><br/>

                    <div class="boxLabel">
                        <label for="txtUsername">Usuario</label>
                    </div>
                    <div class="boxInput">
                        <input type="text" id="txtUsername" name="txtUsername" size="30" />
                    </div><br/>

                    <div class="boxLabel">
                        <label for="txtPassword">Contraseña</label>
                    </div>
                    <div class="boxInput">
                        <input type="text" id="txtPassword" name="txtPassword" size="30" />
                    </div><br/>

                    <div class="boxLabel">
                        <label for="cmbSecretQuestion">Pregunta Secreta</label>
                    </div>
                    <div class="boxInput">
                        <select id="cmbSecretQuestion" name="cmbSecretQuestion">
                                <option value="-1">Seleccione..</option>
                            <c:forEach items="${secretQuestions}" var="secretQuestion">
                                <option value="${secretQuestion.id}">${secretQuestion.preguntaSecreta}</option>
                            </c:forEach>
                        </select>
                    </div><br/>

                    <div class="boxLabel">
                        <label for="txtSecretAnswer">Respuesta Secreta</label>
                    </div>
                    <div class="boxInput">
                        <input type="text" id="txtSecretAnswer" name="txtSecretAnswer" size="30" />
                    </div><br/>

                    <div class="boxLabel">
                        <label for="cmbCountry">País</label>
                    </div>
                    <div class="boxInput">
                        <select id="cmbCountry" name="cmbCountry">
                                <option value="-1">Seleccione..</option>
                            <c:forEach items="${countries}" var="country">
                                <option value="${country.id}">${country.pais}</option>
                            </c:forEach>
                        </select>
                    </div><br/>

                    <div class="boxLabel">
                        <label for="cmbState">Estado</label>
                    </div>
                    <div class="boxInput">
                        <select id="cmbState" name="cmbState">
                            <option value="-1">Seleccione..</option>
                        </select>
                    </div><br/>

                    <div class="boxLabel">
                        <label for="cmbTown">Municipio</label>
                    </div>
                    <div class="boxInput">
                        <select id="cmbTown" name="cmbTown">
                            <option value="-1">Seleccione..</option>
                        </select>
                    </div><br/>

                    <button id="submitUser" name="submitUser">Guardar</button>
                </div>
            </form>
        </div>
        <br />
        <div id="grid" style="width: 620px">
            <table id="userGrid"></table>
            <div id="pager"></div>
        </div>
    </div>