<%--
  Created by IntelliJ IDEA.
  User: marce
  Date: 4/21/12
  Time: 11:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript" charset="UTF-8" src="js/bookstore/registroUsuario.js" ></script>
    <div id="sidebar">
        <h1>Más</h1>
        <ul class="sidemenu">
            <li><a href="#">Mi Cuenta</a></li>
            <li><a href="#">Polìticas de Compra</a></li>
            <li><a href="#">Politicas de Envío</a></li>
            <li><a href="#">Formas de Pago</a></li>
        </ul>
    </div>
    <div id="main">
        <div>
            <h1>Registro</h1>
            <form action="">
                <div class="margin">
                    <div class="boxLabel"><label>Nombre</label></div>
                    <div class="boxInput"><input type="text" size="30" /></div><br/>
                    <div class="boxLabel"><label>Apellido Paterno</label></div>
                    <div class="boxInput"><input type="text" size="30" /></div><br/>
                    <div class="boxLabel"><label>Apellido Materno</label></div>
                    <div class="boxInput"><input type="text" size="30" /></div><br/>
                    <div class="boxLabel"><label>Email</label></div>
                    <div class="boxInput"><input type="text" size="30" /></div><br/>
                    <div class="boxLabel"><label>Usuario</label></div>
                    <div class="boxInput"><input type="text" size="30" /></div><br/>
                    <div class="boxLabel"><label>Contraseña</label></div>
                    <div class="boxInput"><input type="text" size="30" /></div><br/>
                    <div class="boxLabel"><label>Pregunta Secreta</label></div>
                    <div class="boxInput">
                        <select>
                            <option>Seleccione..</option>
                        </select>
                    </div><br/>
                    <div class="boxLabel"><label>Respuesta Secreta</label></div>
                    <div class="boxInput"><input type="text" size="30" /></div><br/>
                    <div class="boxLabel"><label>País</label></div>
                    <div class="boxInput">
                        <select>
                            <option>Seleccione..</option>
                        </select>
                    </div><br/>
                    <div class="boxLabel"><label>Estado</label></div>
                    <div class="boxInput">
                        <select>
                            <option>Seleccione..</option>
                        </select>
                    </div><br/>
                    <div class="boxLabel"><label>Municipio</label></div>
                    <div class="boxInput">
                        <select>
                            <option>Seleccione..</option>
                        </select>
                    </div><br/>
                    <button id="submitUsuario">Guardar</button>
                </div>
            </form>
        </div>
        <br />
    </div>