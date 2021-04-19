package com.yadiel.Dojos_Ninjas.controllers;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yadiel.Dojos_Ninjas.models.Dojo;
import com.yadiel.Dojos_Ninjas.models.Ninja;
import com.yadiel.Dojos_Ninjas.services.DojoNinja_Services;

@Controller
public class HomeController {
	
	private DojoNinja_Services dnServ;

	public HomeController(DojoNinja_Services dnServ) {
		super();
		this.dnServ = dnServ;
	}
	
//	Will show all our dojos
	@RequestMapping("/")
	public String index(Model model) {
		model.addAttribute("allDojos", dnServ.getAllDojos());
		return "index.jsp";
	}
	
//	will show one Dojo and all it's ninjas
	@GetMapping("/showDojo/{id}")
	public String showDojo(@PathVariable("id") Long id, Model model) {
		Dojo myDojo = this.dnServ.getDojo(id);
		model.addAttribute("thisDojo", myDojo);
		
		return "oneDojo.jsp";
	}
	
	
	
//	This is the JSP return for the form to create Dojo
	@GetMapping("/newDojo")
	public String dojo(@ModelAttribute("addDojo") Dojo dojo) {
		
		return "newDojo.jsp";
	}
	
//	this is where we create a dojo ACTION = /makeDojo
	@PostMapping("/makeDojo")
	public String createDojo(@Valid @ModelAttribute("addDojo") Dojo dojo, BindingResult result, Model model) {
		if(result.hasErrors()) {
			System.out.println(result.getAllErrors());

		} else {
			this.dnServ.create(dojo);
		}
		return "redirect:/";
	}
	
//	this is the JSP return for the form to create Ninja
	@GetMapping("/newNinja")
	public String ninja(@ModelAttribute("addNinja") Ninja ninja, Model model) {
		model.addAttribute("allDojos", dnServ.getAllDojos());
		return "newNinja.jsp";
	}
	
//	this is where we create our Ninja ACTION = /makeNinja
	@PostMapping("/makeNinja")
	public String createNinja(@Valid @ModelAttribute("addNinja") Ninja ninja, BindingResult result, Model model) {
		System.out.println(ninja.getDojo());
		if(result.hasErrors()) {
			System.out.println(result.getAllErrors());

		} else {
			this.dnServ.create(ninja);
		}
		return "redirect:/";
	}
	
	
	
	
	
	
	
	
}
