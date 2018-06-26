<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE HTML>
<html ng-app='myApp'><head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="css/style.css" title="style">
<title>Página personal</title>
</head>
<body  ng-app='myApp' ng-controller="personalPageController">
  <div id="main">
    <div id="header">
      <div id="logo">
        <div id="logo_text">
         <h1>Portafolio</h1>
        </div>
      </div>
      <div id="menubar">
        <ul id="menu"><!-- put class="selected" in the li tag for the selected page - to highlight which page you're on -->
         
          <li><a href="index">Home</a></li>
          <li><a href="personal">Personal</a></li>
          <li><a href="profesional">Profesional</a></li>
          <li class="selected"><a href="contacto">Contacto</a></li>
       
        </ul></div>
    </div>
    <div id="content_header"></div>
    <div id="site_content">
      <div class="sidebar">
        <!-- insert your sidebar items here -->
        
      </div>
      <div id="content">
        <!-- insert the page content here -->
        <h1>Contacto</h1>
        Selecciona la opción con la que desees contactar:<br>
        <h1><span class="errorblock">${respuesta}</span></h1>
        <select ng-model="contacto" ng-options="contacto for contacto in  contactos">
        <option value="">---Elige la opción--</option>
        
        </select>
        
    
        <div ng-if="contacto === 'Email'">
        <p>Envianos tus comentarios </p>
        
        <form:form modelAttribute="emailForm"  method="post" action="enviarCorreo">
          <div class="form_settings">
            <table style="width:100px; border-spacing:0;">
               <tr>
                  <td>Nombre</td><td><form:input path="asunto" class="contact"/></td>
               </tr>
                <tr >
                  <td><span class="errorblock"><form:errors path="asunto"/></span></td>
               </tr>
             
              <tr>
                  <td>Email</td><td><form:input path="remitente" class="contact"/></td>
               </tr>
                <tr >
                  <td><span class="errorblock"><form:errors path="remitente"/></span></td>
               </tr>              
            </table>
            <table style="width:100px; border-spacing:0;">
              <tr>
                  <td>Mensaje:</td> 
               </tr>
               <tr>
                  <td><form:textarea path="mensaje" class="contact textarea" rows="8" cols="50"/></td>
               </tr>
                <tr >
                  <td><span class="errorblock"><form:errors path="mensaje"/></span></td>
               </tr>
            </table>
            <p><br/></p>
            <p style="padding-top: 15px; padding-left: 20px"><span> </span><input class="submit" type="submit" value="Enviar Email"></p>
          </div>
        </form:form>
      
        </div><!-- fin de correo -->
        
        
        
        
        
        
        
        
    
      
      
      
       
      </div>
    </div>
    <div id="content_footer"></div>
    <div id="footer">
      Copyright © black &amp; white | <a href="http://validator.w3.org/check?uri=referer">HTML5</a> | <a href="http://jigsaw.w3.org/css-validator/check/referer">CSS</a> | <a href="http://www.html5webtemplates.co.uk">design from HTML5webtemplates.co.uk</a>
</div>
  </div>
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular.js"></script>
  <script src="js/controller/personalPageController.js"></script>
  
  
</body></html>