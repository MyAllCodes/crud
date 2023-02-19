package com.crud.project.controller;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.crud.project.service.CrudService;

@Controller
public class LoginController {
	private CrudService crudservice;

	public LoginController(CrudService crudservice) {
		super();
		this.crudservice = crudservice;
	}

	@PostMapping("/loginSuccess")
	public String login(Model m) {
		return "redirect:/home";
	}

	@GetMapping("/")
	public String loginpage() {
		return "redirect:/login";
	}

	@GetMapping("/login")
	public ModelAndView loginform() {
		return new ModelAndView("login");
	}
	@GetMapping("/home")
	public String home(Model m) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		for (GrantedAuthority list : auth.getAuthorities()) {
			m.addAttribute("list", crudservice.findAll());
			m.addAttribute("ROLE_USER", list);
			return "home";
		}
		return null;
	}
}
