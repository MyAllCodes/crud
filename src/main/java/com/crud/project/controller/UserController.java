package com.crud.project.controller;

import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.crud.project.service.CrudService;

@Controller
@RequestMapping("/user")
public class UserController {
	private final CrudService crudservice;
	
public UserController(CrudService crudservice) {
		super();
		this.crudservice = crudservice;
	}

@GetMapping("/home")
public ModelAndView home(Model m) {
	UserDetails userDetails =
			 (UserDetails)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
	String username=userDetails.getUsername();
	System.out.println(username);
	System.out.println(crudservice.findByUsername(username));
	m.addAttribute("user", crudservice.findByUsername(username));
	return new ModelAndView("/user/home");
}
}

