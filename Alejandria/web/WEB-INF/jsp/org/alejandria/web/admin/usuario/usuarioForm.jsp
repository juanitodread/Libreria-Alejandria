<%--
  Created by IntelliJ IDEA.
  User: marce
  Date: 4/22/12
  Time: 11:43 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript" charset="UTF-8" src="js/admin/usuario.js" ></script>
    <div id="main-admin">
        <div>
            <h1>Administrar Usuarios</h1>
            <form action="">
                <div class="margin">
                    <div class="boxLabel">
                        <label>Nombre</label>
                    </div>
                    <div class="boxInput">
                        <input type="text" size="30" />
                    </div><br/>

                    <div class="boxLabel">
                        <label>Apellido Paterno</label>
                    </div>
                    <div class="boxInput">
                        <input type="text" size="30" />
                    </div><br/>

                    <div class="boxLabel">
                        <label>Apellido Materno</label>
                    </div>
                    <div class="boxInput">
                        <input type="text" size="30" />
                    </div><br/>

                    <div class="boxLabel">
                        <label>Email</label>
                    </div>
                    <div class="boxInput">
                        <input type="text" size="30" />
                    </div><br/>

                    <div class="boxLabel">
                        <label>Usuario</label>
                    </div>
                    <div class="boxInput">
                        <input type="text" size="30" />
                    </div><br/>

                    <div class="boxLabel">
                        <label>Contraseña</label>
                    </div>
                    <div class="boxInput">
                        <input type="text" size="30" />
                    </div><br/>

                    <div class="boxLabel">
                        <label>Pregunta Secreta</label>
                    </div>
                    <div class="boxInput">
                        <select>
                                <option value="-1">Seleccione..</option>
                            <c:forEach items="${preguntasSecretas}" var="preguntaSecreta">
                                <option value="${preguntaSecreta.id}">${preguntaSecreta.preguntaSecreta}</option>
                            </c:forEach>
                        </select>
                    </div><br/>

                    <div class="boxLabel">
                        <label>Respuesta Secreta</label>
                    </div>
                    <div class="boxInput">
                        <input type="text" size="30" />
                    </div><br/>

                    <div class="boxLabel">
                        <label>País</label>
                    </div>
                    <div class="boxInput">
                        <select id="cmbPais" name="cmbPais">
                                <option value="-1">Seleccione..</option>
                            <c:forEach items="${paises}" var="pais">
                                <option value="${pais.id}">${pais.pais}</option>
                            </c:forEach>
                        </select>
                    </div><br/>

                    <div class="boxLabel">
                        <label>Estado</label>
                    </div>
                    <div class="boxInput">
                        <select id="cmbEstado" name="cmbEstado">
                            <option value="-1">Seleccione..</option>
                        </select>
                    </div><br/>

                    <div class="boxLabel">
                        <label>Municipio</label>
                    </div>
                    <div class="boxInput">
                        <select id="cmbMunicipio" name="cmbMunicipio">
                            <option value="-1">Seleccione..</option>
                        </select>
                    </div><br/>

                    <button id="submitUsuario">Guardar</button>
                </div>
            </form>
        </div>
        <br />
        <div id="grid" style="width: 620px">
            <table id="userGrid"></table>
            <div id="pager"></div>
        </div>
    </div>