package com.crud.project.controller;



import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.crud.project.bean.User;
import com.crud.project.service.CrudService;

@Controller
@RequestMapping("/manager")
public class ManagerController {
	private CrudService crudservice;
	
	public ManagerController(CrudService crudservice) {
			super();
			this.crudservice = crudservice;
		}
@PostMapping("/add")
public String add(@ModelAttribute User model) {
	crudservice.save(model);
	return "redirect:/home";
}
@PostMapping("/update")
public String update(@ModelAttribute User model) {
	crudservice.save(model);
	return "redirect:/home";
}
}
