package com.tutosoftware.personalpage.controller;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.validation.Valid;
import javax.validation.constraints.NotNull;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.tutosoftware.personalpage.model.Correo;



@Controller
public class ContactoController {
	
	@NotNull
	@Autowired
	private JavaMailSender emailSender;
	
	
	
	@RequestMapping(value = {"/contacto","/correoEnviado"}, method = RequestMethod.GET)
	public ModelAndView obtenerContacto( @ModelAttribute("emailForm") Correo emailForm) {
		
		return new ModelAndView("contacto");
	}
	
	
	@RequestMapping(value = "/enviarCorreo", method = RequestMethod.POST)
	public ModelAndView enviarEmail(@Valid @ModelAttribute("emailForm") Correo emailForm,BindingResult result) {
		
		String respuesta ="Tienes errores vuelve a seleccionar Email";
		ModelAndView model = new ModelAndView();
		
        model.setViewName(result.hasErrors() ? "contacto" : "redirect:contacto");
        
        String resultado=model.getViewName();
        
        if(resultado.equals("redirect:contacto")){
        enviarSimpleMail(emailForm);
        enviarMailHTML(emailForm);
        //respuesta="correo enviado";
	    System.out.println(resultado);
       }
        model.addObject("respuesta",respuesta);
        return model;
		   
		     
		
		
		
	}
	
	
	public void enviarSimpleMail(Correo emailForm) {
		SimpleMailMessage message = new SimpleMailMessage();
		message.setTo("micorreo@hotmail.com");//Aquí se envia al correo donde llegan los mensajes
		message.setSubject(emailForm.getAsunto());
		message.setText(emailForm.getMensaje()+"Email:"+emailForm.getRemitente());
		emailSender.send(message);
	}
	
	public void enviarMailHTML(Correo emailForm) {

		String fromEmail = "micorreo@hotmail.com";//Aquí se envia al correo donde llegan los mensajes
		String toEmail = "micorreo@hotmail.com";//Aquí se envia al correo donde llegan los mensajes
		String emailSubject = emailForm.getAsunto();
		String emailBody = emailForm.getMensaje();

		MimeMessage mimeMessage = emailSender.createMimeMessage();
		try {
			MimeMessageHelper helper = new MimeMessageHelper(mimeMessage, true,
					"utf-8");
			mimeMessage.setContent("<i><b>" + emailBody + "</b></i>",
					"text/html");
			helper.setFrom(fromEmail);
			helper.setTo(toEmail);
			helper.setSubject(emailSubject);

		
		} catch (MessagingException e) { }

		/*
		 * uncomment the following lines for attachment FileSystemResource file
		 * = new FileSystemResource("attachment.jpg");
		 * helper.addAttachment(file.getFilename(), file);
		 */

		emailSender.send(mimeMessage);
		System.out.println("Mail sent successfully.");

	}

}
