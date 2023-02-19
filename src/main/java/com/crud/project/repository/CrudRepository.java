package com.crud.project.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.crud.project.bean.User;

public interface CrudRepository extends JpaRepository<User,Integer> {
	Optional<User> findByUsername(String username);
}
