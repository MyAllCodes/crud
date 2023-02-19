package com.crud.project.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.crud.project.bean.MyUserDetails;
import com.crud.project.bean.User;
import com.crud.project.repository.CrudRepository;
@Service
public class MyUserDetailsService implements UserDetailsService {
	@Autowired
	CrudRepository crudRepository;
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		// TODO Auto-generated method stub
Optional<User> user=crudRepository.findByUsername(username);
		
		user.orElseThrow(()->new UsernameNotFoundException("Not Found: "+username));
		return user.map(MyUserDetails::new).get();
	}

}
