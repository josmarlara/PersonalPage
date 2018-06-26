package com.tutosoftware.personalpage.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.tutosoftware.personalpage.model.Home;
import com.tutosoftware.personalpage.model.PostMensajes;

@Controller
@SessionAttributes("posts")
public class IndexController {
	
	@RequestMapping(value = {"/","/index"}, method=RequestMethod.GET)
	public ModelAndView obtenerIndex(Model model,@ModelAttribute("posts")  List<PostMensajes> posts,
			@ModelAttribute("postForm") PostMensajes postForm){
		
		Home home = new Home();
		home.setMensaje(iniciarMensaje());
		home.setCita(iniciarCita());
		model.addAttribute(home);
		if (posts == null)
			posts = nuevoPosts();
		if (validarPost(postForm)) {
			postForm.setFechaPost(new Date());
			posts.add(postForm);
		}
		model.addAttribute("posts", posts);
		return  new ModelAndView("index");
	}
	
	
	
	@RequestMapping(value="/indexRedirect")
	public  ModelAndView  actualizarCitas(@ModelAttribute("homeForm") Home homeForm){
		return new  ModelAndView ("indexUpdate");
	}
	
	
	
	
	
	
	
	
	public String iniciarMensaje(){
		String mensaje = "Con el fin de aprender tienes que ser capaz de decir no se";
		return mensaje;
	}
	
	public String iniciarCita(){
		String cita = "El hombre es el arquitecto de su propio destino";
		return cita;
	}
	
	public List<PostMensajes> iniciarPost(){
		List<PostMensajes> posts = new ArrayList<>();
		PostMensajes post = new PostMensajes();
		post.setAsunto("Bienvenido");
		post.setFechaPost(new Date());
		post.setMensajePost("Publica lo que quieras");
		posts.add(post);
		return posts;
	}
	
	@ModelAttribute("posts")
	public List<PostMensajes> nuevoPosts(){
		return iniciarPost();
	}
	
	
	public boolean validarPost(PostMensajes post) {
		try {
			if (post.getAsunto().trim().length() == 0
					|| post.getMensajePost().trim().length() == 0) {
				return false;
			}
		} catch (Exception e) {
			return false;
		}
		return true;
	}

}
