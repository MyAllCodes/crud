package com.crud.project.serviceimpl;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.crud.project.bean.User;
import com.crud.project.repository.CrudRepository;
import com.crud.project.service.CrudService;

@Service
public class CrudServiceImpl implements CrudService {
	private CrudRepository crudrepository;

	public CrudServiceImpl(CrudRepository crudrepository) {
		super();
		this.crudrepository = crudrepository;
	}

	@Override
	public List<User> findAll() {
		// TODO Auto-generated method stub
		return crudrepository.findAll();
	}

	@Override
	public void save(User model) {
		crudrepository.save(model);

	}

	@Override
	public void deleteById(int id) {
		crudrepository.deleteById(id);

	}

	@Override
	public User findByUsername(String username) {
		// TODO Auto-generated method stub
		Optional<User> model = crudrepository.findByUsername(username);
		return model.get();
	}
}