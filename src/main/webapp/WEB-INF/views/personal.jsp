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
      </div>
      <div id="menubar">
        <ul id="menu"><!-- put class="selected" in the li tag for the selected page - to highlight which page you're on -->
          <li><a href="index">Home</a></li>
          <li class="selected"><a href="personal">Personal</a></li>
          <li><a href="profesional">Profesional</a></li>
          <li><a href="contacto">Contacto</a></li>
        </ul></div>
    </div>
    <div id="content_header"></div>
    <div id="site_content">
      <div class="sidebar">
        <!-- insert your sidebar items here -->
        <h3>Mi foto</h3>
        <span class="left"><img src="images/perro.jpg" alt="The Author"></span>
        <p><i>"Aprende a pensar sin trabas"</i><br>
        <p></p>
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
        <h1>Biografia</h1>
        <p>Bienvenido a mi portafolio.Yo soy <b style="color: black;"><c:out value="${ person.biografia.nombre }"/> </b> 
        comparto mi información para estar en contacto y conversar</p>
        <h2>Información Personal</h2>
        <table style="width:100%; border-spacing:0;">
              <tr><td>Nombre</td><td><c:out value="${ person.biografia.nombre }"/> </td></tr>
              <tr><td>Apellidos</td><td><c:out value="${ person.biografia.apellidos }"/> </td></tr>
              <tr><td>Edad</td><td><c:out value="${ person.biografia.edad }"/> </td></tr>
              <tr><td>Fecha de Nacimiento</td><td><c:out value="${ person.biografia.fechaNacimiento }"/> </td></tr>
              <tr><td>Lugar de nacimiento</td><td><c:out value="${ person.biografia.ubicacion }"/> </td></tr>
              <tr><td>País de origen</td><td><c:out value="${ person.biografia.pais }"/> </td></tr>
        </table>
        
         <h2>Hobbies</h2>
         <p>Algunos  quehaceres en los ratos libres:</p>
         <ul>
           <c:forEach var="hobby" items="${ person.biografia.hobbies }">
             <li><c:out value="${hobby }"/></li>
           </c:forEach>
         </ul>
        
         <h2>Lecturas</h2>
         <p>Mis lecturas favoritas:</p>
         <ul>
          <c:forEach var="reading" items="${ person.biografia.lecturas }">
             <li><c:out value="${ reading }"/></li>
           </c:forEach>
        </ul>
        
        <h2>Educación</h2>
        <table style="width:100%; border-spacing:0;">
              <tr><td>Nivel educativo</td><td><c:out value="${ person.educacion.nivelEducativo }"/></td></tr>
              <tr><td>Universidad/Colegio</td><td><c:out value="${ person.educacion.universidad }"/></td></tr>
              <tr><td>Licenciatura</td><td><c:out value="${ person.educacion.licenciatura }"/></td></tr>
              <tr><td>Especialización</td><td><c:out value="${ person.educacion.especializacion }"/></td></tr>
              <tr><td>Año de graduación</td><td><c:out value="${ person.educacion.year }"/></td></tr>
        </table>
        
       
      </div>
      
    </div>
    <div id="content_footer"></div>
    <div id="footer">
      Copyright © black &amp; white | <a href="http://validator.w3.org/check?uri=referer">HTML5</a> | <a href="http://jigsaw.w3.org/css-validator/check/referer">CSS</a> | <a href="http://www.html5webtemplates.co.uk">design from HTML5webtemplates.co.uk</a>
</div>
  
</body>
</html>