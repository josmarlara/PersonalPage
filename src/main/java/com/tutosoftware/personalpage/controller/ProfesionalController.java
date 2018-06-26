package com.tutosoftware.personalpage.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.tutosoftware.personalpage.model.Profesional;

@Controller
public class ProfesionalController {
	
	@RequestMapping(value = "/profesional", method = RequestMethod.GET)
	public ModelAndView obtenerProfesional(Model model) {
		model.addAttribute("profesional", iniciarProfesional());
		
		return new ModelAndView("profesional");
		
		
	}

    
	private Profesional iniciarProfesional(){
		
		Profesional profesional = new Profesional();
		profesional.setPosicion("Freelancer");
		profesional.setCompania("Diversos clientes");
		profesional.setTiempo("2013 hasta  la fecha");
		profesional.setUbicacion("Estado de México,DF,Remoto");
		
		
		List<String> prevTrabajos = new ArrayList<String>();
		prevTrabajos.add("Programador java");
		prevTrabajos.add("Desarrollador web");
		prevTrabajos.add("Programador php");
		prevTrabajos.add("Analista programador java");
		
		
		List<String> habilidades = new ArrayList<String>();
		habilidades.add("Manejo de base de datos: mysql,oracle,informix,sql server");
		habilidades.add("Manejo de sistemas operativos: Linux,Windows,Unix");
		habilidades.add("Programación java,c,php,javascript");
		habilidades.add("IDE eclipse,netbeans,RAD");
		habilidades.add("Manejo de frameworks java:Spring MVC,JSF,Struts,Hibernate");
		habilidades.add("Implementación de webservice:soap y rest");
		habilidades.add("Diagramación uml");
		
		profesional.setPrevTrabajos(prevTrabajos);
		profesional.setHabilidades(habilidades);
		
		return profesional;
		
		
	}

}
