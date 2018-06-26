<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE HTML>
<html><head><title>PWP</title><meta name="description" content="personal professional description">
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
        </div>
    </div>
    <div id="site_content">
      <div class="sidebar">
        <!-- insert your sidebar items here -->
        <h3>Actualizar contenido</h3>
        
        
      </div>
      <div id="content">
        <!-- insert the page content here -->
       
        <h1>Actualizar página home (Requerido)</h1>
        <p>Actualizar mensaje y cita.</p>
        <form:form modelAttribute="homeForm" method="post" action="actualizarHome">
          <div class="form_settings">
             <!-- insert the page content here -->
             
             <h2>Actualizar mensaje</h2>
             <table style="width:100px; border-spacing:0;">
               <tr>
                 <td><form:textarea path="mensaje" rows="8" cols="80" /></td>
               </tr>
               <tr >
                  <td><span class="errorblock"><form:errors path="mensaje"/></span></td>
               </tr>
             </table>
           
            
            
            
            
           
             
             <h2>Actualizar mejor cita (Requerido)</h2>
             <table style="width:100px; border-spacing:0;">
               <tr>
                 <td><form:textarea path="cita" rows="8" cols="80"/></td>
               </tr>
                <tr>
                   <td><span class="errorblock"><form:errors path="cita"/></span></td>
                </tr>
                
             
            </table>
         
            
            
            
           
            
            
            <p style="padding-top: 15px; padding-left: 20px"><input class="submit" type="submit" value="Actualizar Home"/></p>
           </div>
        </form:form>
       
        
        <form action="index" method="get">
          <div class="form_settings">
          <p style="padding-top: 15px; padding-left: 20px"><input class="submit" type="submit" value="Cancelar actualización" /></p>
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
</body></html>