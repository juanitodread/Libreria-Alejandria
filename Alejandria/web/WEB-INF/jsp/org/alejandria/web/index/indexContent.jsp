<%--
  Created by IntelliJ IDEA.
  User: marce
  Date: 4/22/12
  Time: 12:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!-- fmt:setLocale value="es"/-->
<fmt:setBundle basename="org.alejandria.web.i18n.text.label" var="label" />


<div id="sidebar">
    <h1><fmt:message key="org.alejandria.web.content.index.leftBar.aboutBooks.title" bundle="${label}"/></h1>
    <ul class="sidemenu">
        <li><a href="#"><fmt:message key="org.alejandria.web.content.index.leftBar.aboutBooks.news" bundle="${label}"/></a></li>
        <li><a href="#"><fmt:message key="org.alejandria.web.content.index.leftBar.aboutBooks.bestSellers" bundle="${label}"/></a></li>
        <li><a href="#"><fmt:message key="org.alejandria.web.content.index.leftBar.aboutBooks.popular" bundle="${label}"/></a></li>
    </ul>
    <h1><fmt:message key="org.alejandria.web.content.index.leftBar.aboutAuthors.title" bundle="${label}"/></h1>
    <ul class="sidemenu">
        <li><a href="#"><fmt:message key="org.alejandria.web.content.index.leftBar.aboutAuthors.news" bundle="${label}"/></a></li>
        <li><a href="#"><fmt:message key="org.alejandria.web.content.index.leftBar.aboutAuthors.popular" bundle="${label}"/></a></li>
    </ul>
    <h1><fmt:message key="org.alejandria.web.content.index.leftBar.events.title" bundle="${label}"/></h1>
    <ul class="sidemenu">
        <li><a href="#"><fmt:message key="org.alejandria.web.content.index.leftBar.events.upcoming" bundle="${label}"/></a></li>
        <li><a href="#"><fmt:message key="org.alejandria.web.content.index.leftBar.events.popular" bundle="${label}"/></a></li>
    </ul>
</div>
<div id="main">
	<div>
		<h1><fmt:message key="org.alejandria.web.content.index.body.quote.title" bundle="${label}"/></h1>
	    <blockquote>
	        <p>Eso desean quienes viven estos tiempos, pero no les toca a ellos decidir. Sólo tú puedes decidir qué hacer con el tiempo que se te ha dado.</p>	        
	    </blockquote>
	    <h3><fmt:message key="org.alejandria.web.content.index.body.quote.who" bundle="${label}"/></h3>
	    <form>
	    <p>	    	
        	<label>Aragorn: </label><input type="radio" name="quoteAnswer"/>&nbsp;&nbsp;
        	<label>Elrond: </label><input type="radio" name="quoteAnswer"/>&nbsp;&nbsp;
        	<label>Gandalf: </label><input type="radio" name="quoteAnswer"/><br/>
        	<input class="button" type="button" value="<fmt:message key="org.alejandria.web.common.content.submit" bundle="${label}"/>"/>
        </p>
        </form>
    </div>
    <div>
    	<h1><fmt:message key="org.alejandria.web.content.index.body.book.title" bundle="${label}"/></h1>
    	<p>
    		<img src="images/book.jpg" id="imgMonthBook" width="100" height="120" alt="" class="float-left" onmouseover="${omoScript}" />
    		Un enemigo invisible plaga nuestro mundo. Los seres humanos se han convertido en huéspedes de una especie invasora que se adueña de sus mentes, dejando intactos sus cuerpos para que continúen con vidas aparentemente normales. La raza humana ha sucumbido casi por completo.
			La captura de Melanie, una de las pocas personas que permanece en "estado salvaje", parece ser el fin.
			Wanderer, el alma invasora en el cuerpo de Melanie, recibió toda clase de advertencias sobre lo que implica habitar un cuerpo humano: las emociones abrumadoras, la exhuberancia de los sentidos, la persistencia de los recuerdos. Sólo existe un problema inesperado: un huésped que se rehúsa desalojar su antiguo cuerpo y perder el control de su mente.
			<br/>
			...<a href="#"><fmt:message key="org.alejandria.web.common.content.readMore" bundle="${label}"/></a>
    	</p>
    </div>
    <div>
	    <h1><fmt:message key="org.alejandria.web.content.index.body.writeUs.title" bundle="${label}"/></h1>
	    <form>
	        <p>
	            <label><fmt:message key="org.alejandria.web.content.index.body.writeUs.name" bundle="${label}"/></label>
	            <input name="dname" value="Your Name" type="text" size="30" /><br/>
	            <label><fmt:message key="org.alejandria.web.content.index.body.writeUs.email" bundle="${label}"/></label>
	            <input name="demail" value="Your Email" type="text" size="30" /><br/>
	            <label><fmt:message key="org.alejandria.web.content.index.body.writeUs.yourComments" bundle="${label}"/></label><br/>
	            <span id="commentMsg"><c:out value="${commentMsg}" escapeXml="false"></c:out></span>
	            <textarea rows="2" cols="2"></textarea>
	            <br />
	            <input class="button" type="submit" value="<fmt:message key="org.alejandria.web.common.content.submit" bundle="${label}"/>"/>	            
	        </p>
	        <p>
			    <div>
				    <h3>Patrick Mckinley</h3>
				    <p><strong>Nice Page to buy books</strong></p>
				    <p>I really found what I was looking for</p>
				    <p class="post-footer align-right"><a href="http://www.free-css.com/" class="comments">Comments (7)</a> <span class="date">Sep 15, 2006</span> </p>	    
			    </div>
			    <div>
				    <h3>Linda Lane</h3>
				    <p>Thanks Alejandría, I found everything what I was looking for and with the best price</p>
				    <p class="post-footer align-right"><a href="http://www.free-css.com/" class="comments">Comments (1)</a> <span class="date">Sep 15, 2006</span> </p>
			    </div>
	        </p>	        
	    </form>	    	    
    </div>
    <h1><fmt:message key="org.alejandria.web.content.index.body.social.title" bundle="${label}"/></h1>
    <h3>twitter: @BookstoreAlejandria</h3>
    <ul>
        <li><span>#BookstoreAlejadría</span></li>
        <li><span>#ReadingLikeTheBestInBA</span></li>
    </ul>
    <h3>facebook: https://www.facebook.com/BookstoreAlejandria</h3>
    <ul>
        <li><span><a href="#">Reading Group</a></span></li>
        <li><span><a href="#">User Promotions</a></span></li>
    </ul>        
</div>