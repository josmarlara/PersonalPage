package com.tutosoftware.personalpage.controller;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.tutosoftware.personalpage.model.Home;
import com.tutosoftware.personalpage.model.PostMensajes;

@Controller
@SessionAttributes(value = { "statusSess", "homeSess" })
public class IndexUpdateController {
	
	@RequestMapping(value="/actualizarHome",method = RequestMethod.POST)
	public ModelAndView submitForm(@Valid @ModelAttribute("homeForm") Home homeForm,BindingResult result,
			@ModelAttribute("postForm") PostMensajes postForm){
		ModelAndView model = new ModelAndView();
		model.addObject("homeForm", homeForm);
		model.addObject("homeSess", homeForm);
		model.addObject("statusSess", "undefault");
        model.setViewName(result.hasErrors() ? "indexUpdate" : "index");
        return model;
		
	}

}
