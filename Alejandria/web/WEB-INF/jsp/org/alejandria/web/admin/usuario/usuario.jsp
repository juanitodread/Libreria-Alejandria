<%--
  Created by IntelliJ IDEA.
  User: marce
  Date: 4/18/12
  Time: 11:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
    <div id="content-wrap">
        <div id="sidebar">
            <h1>Catálogos</h1>
            <ul class="sidemenu">
                <li><a href="#">Usuario</a></li>
                <li><a href="#">País</a></li>
                <li><a href="#">Estado</a></li>
                <li><a href="#">Municipio</a></li>
                <li><a href="#">Pregunta Secreta</a></li>
            </ul>
        </div>
        <div id="main">
            <div>
                <h1>Usuario</h1>
                <form action="">
                    <p>
                        <div class="boxLabel"><label>Nombre</label></div>
                        <div class="boxInput"><input name="dname" value="Your Name" type="text" size="30" /><br/> <br/>
                        <label>Email</label>
                        <input name="demail" value="Your Email" type="text" size="30" /><br/>
                        <label>Your Comments</label>
                        <textarea rows="5" cols="5"></textarea>
                        <br />
                        <input class="button" type="submit" />
                    </p>
                </form>
            </div>
            <br />
        </div>
        <div id="rightbar">
            <h1>More Text</h1>
            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec libero. Suspendisse bibendum. Cras id urna. Morbi tincidunt, orci ac convallis aliquam, lectus turpis varius lorem, eu posuere nunc justo tempus leo. Donec mattis, purus nec placerat bibendum, dui pede condimentum odio, ac blandit ante orci ut diam. Cras fringilla magna.</p>
            <h1>Support Styleshout</h1>
            <p>If you are interested in supporting my work and would like to contribute, you are welcome to make a small donation through the donate link on my website - it will be a great help and will surely be appreciated.</p>
        </div>
    </div>
</body>
</html>