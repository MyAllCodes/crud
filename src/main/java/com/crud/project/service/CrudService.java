package com.crud.project.service;

import java.util.List;

import com.crud.project.bean.User;

public interface CrudService {
	List<User> findAll();
	void save(User model);
	void deleteById(int id);
	User findByUsername(String username);
}
