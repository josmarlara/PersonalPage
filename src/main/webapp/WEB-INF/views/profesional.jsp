<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE HTML>
<html><head>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="css/style.css" title="style">
<title>Página personal</title>    
</head>

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
        <ul id="menu">
        <!-- put class="selected" in the li tag for the selected page - to highlight which page you're on --><li>
          <a href="index">Home</a></li>
          <li><a href="personal">Personal</a></li>
          <li class="selected"><a href="profesional">Profesional</a></li>
          <li><a href="contacto">Contacto</a></li>
        </ul></div>
    </div>
    <div id="content_header"></div>
    <div id="site_content">
      <div class="sidebar">
       <h3>Links</h3>
        <ul>
          <li><a href="http://www.google.com">Google</a></li>
          <li><a href="http://www.gmail.com">Gmail</a></li>
          <li><a href="http://www.mail.yahoo.com">Yahoo Mail</a></li>
          <li><a href="http://www.alibatabusiness.com">Alibata Business</a></li>
        </ul>
      </div>
      
     
            
       
      <div id="content">
        <!-- insert the page content here -->
        <h1>Carrrera</h1>
        <p>Mi trabajo actual es el siguiente.</p>
        <h2>Mi puesto actual</h2>
        <table style="width:100%; border-spacing:0;">
              <tr><td>Posición actual</td><td><c:out value="${ profesional.posicion }"/></td></tr>
              <tr><td>Compañia</td><td><c:out value="${ profesional.compania }"/></td></tr>
              <tr><td>Tiempo</td><td><c:out value="${ profesional.tiempo }"/></td></tr>
              <tr><td>Ubicación</td><td><c:out value="${ profesional.ubicacion }"/></td></tr>
        </table>
        
        <h2>Habilidades</h2>
        <p>Especialización</p>
        <ul>
          <c:forEach var="skill" items="${ profesional.habilidades }">
             <li><c:out value="${skill }"/></li>
           </c:forEach>
        </ul>
        
        <h2>Previos trabajos</h2>
        <ul>
          <c:forEach var="job" items="${ profesional.prevTrabajos }">
             <li><c:out value="${job }"/></li>
           </c:forEach>
        </ul>
        
        
      </div>
    </div>
    <div id="content_footer"></div>
    <div id="footer">
      Copyright © black &amp; white | <a href="http://validator.w3.org/check?uri=referer">HTML5</a> | <a href="http://jigsaw.w3.org/css-validator/check/referer">CSS</a> | <a href="http://www.html5webtemplates.co.uk">design from HTML5webtemplates.co.uk</a>
</div>
  </div>
</body></html>