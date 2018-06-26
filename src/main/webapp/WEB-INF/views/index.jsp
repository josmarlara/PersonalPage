<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="css/style.css" title="style">
<title>Página personal</title>    
</head>

<body>
  <div id="main">
    <div id="header">
      <div id="logo">
        <div id="logo_text">
         
          
          <h1>Portafolio</h1>
        
        </div>
      </div>
      <div id="menubar">
        <ul id="menu"><!-- put class="selected" in the li tag for the selected page - to highlight which page you're on -->
          <li class="selected"><a href="index">Home</a></li>
          <li><a href="personal">Personal</a></li>
          <li><a href="profesional">Profesional</a></li>
          <li><a href="contacto">Contacto</a></li>
        </ul></div>
    </div>
    <div id="site_content">
      <div class="sidebar">
        <!-- insert your sidebar items here -->
        <h3>Postea Un Mensaje</h3>
        <c:forEach var="post" items="${ posts }">
            <h4><c:out value="${ post.asunto }" /></h4>
            <h5><c:out value="${ post.fechaPost }" /></h5>
            <p><c:out value="${ post.mensajePost }" /></p>
        </c:forEach>
      
          <form:form action="index" method="get" modelAttribute="postForm">      
         <table>
           <tr>
              <td>Asunto:</td>
           </tr>
           <tr>
              <td><form:input path="asunto" /></td>
           </tr>
           <tr>
              <td>Mensaje:</td>
           </tr>
           <tr>
           	 <td><form:textarea path="mensajePost" cols="22" rows="5"  draggable="false"/></td>
             
           </tr>
           <tr>
           	 <td><input type="submit" value="POST"/></td>
             
           </tr>
         </table>
          </form:form>
        <h3>Links</h3>
        <ul>
          <li><a href="http://www.google.com">Google</a></li>
          <li><a href="http://www.gmail.com">Gmail</a></li>
          <li><a href="http://www.mail.yahoo.com">Yahoo Mail</a></li>
          <li><a href="http://www.alibatabusiness.com">Alibata Business</a></li>
        </ul>
        
      </div>
      
      <c:set var="statusSess" value="${ sessionScope.statusSess }" />
      <c:choose>
        <c:when test="${ statusSess eq 'undefault'  }">
          <c:set var="home" value="${ sessionScope.homeSess }" />
         </c:when>
        
          <c:otherwise>
             <c:set var="home" value="${ home }" />
        </c:otherwise>
      </c:choose>
      <div id="content">
             <!-- insert the page content here -->
             <h1>Bienvenido a mi página personal</h1>
             <p>Esta página web cuenta una breve historia de mi vida.</p>
             
             
             <p><c:out value="${ home.mensaje }"></c:out> </p>

             <h2>Mi cita favorita</h2>
             <p><c:out value="${ home.cita }" ></c:out></p>
             
            
             <form action="indexRedirect">
                <div class="form_settings">
                  <p style="padding-top: 15px; padding-left: 20px"><span></span><input class="submit" type="submit"  value="actualizarCitas"></p>
                </div>
            </form>
       </div>
         
       
      
    </div>
    <div id="content_footer">    
    </div>
    <div id="footer">
      Copyright © black &amp; white | <a href="http://validator.w3.org/check?uri=referer">HTML5</a> | <a href="http://jigsaw.w3.org/css-validator/check/referer">CSS</a> | <a href="http://www.html5webtemplates.co.uk">design from HTML5webtemplates.co.uk</a>
    </div>
  </div>
	





</body>
</html>