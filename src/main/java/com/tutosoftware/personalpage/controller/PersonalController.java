package com.tutosoftware.personalpage.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.tutosoftware.personalpage.model.Biografia;
import com.tutosoftware.personalpage.model.Educacion;
import com.tutosoftware.personalpage.model.Personal;

@Controller
public class PersonalController {
	
public Personal iniciarPersonal(){
		
		Biografia bio = new Biografia();
		bio.setNombre("José Martín");
		bio.setApellidos("Lara López");
		bio.setEdad(40);
		bio.setFechaNacimiento("30/01/1978");
		bio.setUbicacion("Estado de México,México");
		bio.setPais("México");
		
		List<String> hobbies = new ArrayList<>();
		
		
		hobbies.add("Musica");
		hobbies.add("Cerveza");
		hobbies.add("Literatura");
		hobbies.add("Mujeres");
		hobbies.add("Futbol soccer");
		hobbies.add("Software");
		
		
		List<String> lecturas = new ArrayList<>();
		lecturas.add("ciencia ficción");
		lecturas.add("terror");
		lecturas.add("política");
		lecturas.add("programación de software");
		
		bio.setHobbies(hobbies);
		bio.setLecturas(lecturas);
		
		Educacion edu = new Educacion();
		edu.setNivelEducativo("licenciatura");
		edu.setLicenciatura("Ingeniería en Sistemas Computacionales");
		edu.setUniversidad("IPN/ESCOM");
		edu.setEspecializacion("Desarrollo de sistemas");
		edu.setYear(2006);
		
		Personal person = new Personal();
		person.setEducacion(edu);
		person.setBiografia(bio);
		
		return person;
		
	}
	
	
		
	
	@RequestMapping(value = "/personal", method = RequestMethod.GET)
	public ModelAndView obtenerPersonal(Model model) {
		model.addAttribute("person", iniciarPersonal());
		return new ModelAndView("personal");
	}
	
	

}
