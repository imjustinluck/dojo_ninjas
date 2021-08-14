package com.jda.dojo_ninja.controllers;

import java.util.List;
import java.util.Optional;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.jda.dojo_ninja.models.Dojo;
import com.jda.dojo_ninja.models.Ninja;
import com.jda.dojo_ninja.services.MainService;

@Controller
public class MainController {

	@Autowired
	private MainService service;
	
	@GetMapping("/")
	public String index() {
		return "index.jsp";
	}

//	DOJO ROUTES
	@GetMapping("/dojos/new")
	public String newDojo(@ModelAttribute Dojo dojo) {
		return "dojo.jsp";
	}
	@PostMapping("/dojos/new")
	public String createDojo(@Valid @ModelAttribute Dojo dojo, BindingResult result) {
		if(result.hasErrors()) {
			return "dojo.jsp";
		}
		else {
			service.createDojo(dojo);
			return "redirect:/";			
		}
	}
//	SHOW DOJO
	@GetMapping("/dojos/{id}")
	public String showDojo(@PathVariable("id") Long id, Model model) {
		Optional<Dojo> dojo = service.oneDojo(id);
		model.addAttribute("dojo", dojo.get());
		return "dojoninja.jsp";
	}
	
//	NINJA ROUTES
	@GetMapping("/ninjas/new")
	public String newNinja(@ModelAttribute Ninja ninja, Model model) {
		List<Dojo> dojos = service.allDojos();
		model.addAttribute("dojos", dojos);
		return "ninja.jsp";
	}
	@PostMapping("/ninjas/new")
	public String createNinja(@Valid @ModelAttribute Ninja ninja, BindingResult result, Model model) {
		if(result.hasErrors()) {
			model.addAttribute("dojos", service.allDojos());
			return "ninja.jsp";
		}
		else {
			service.createNinja(ninja);
			return "redirect:/";			
		}
	}
	
}
