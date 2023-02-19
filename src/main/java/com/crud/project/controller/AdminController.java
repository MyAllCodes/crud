package com.crud.project.controller;


import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.crud.project.bean.User;
import com.crud.project.service.CrudService;

@Controller
@RequestMapping("/admin")
public class AdminController {
	private CrudService crudservice;
	
public AdminController(CrudService crudservice) {
		super();
		this.crudservice = crudservice;
	}

	
	  public static PasswordEncoder passwordEncoder() { return new
	  BCryptPasswordEncoder(); }
	 
@PostMapping("/add")
public String add(@ModelAttribute User model) {
	model.setPassword(passwordEncoder().encode(model.getPassword()));
	crudservice.save(model);
	return "redirect:/home";
}
@PostMapping("/update")
public String update(@ModelAttribute User model) {
	crudservice.save(model);
	return "redirect:/home";
}
@GetMapping("/delete")
public String delete(@RequestParam int id) {
	crudservice.deleteById(id);
	return "redirect:/home";
}
}

