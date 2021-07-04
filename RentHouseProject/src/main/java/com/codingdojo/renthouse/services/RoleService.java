package com.codingdojo.renthouse.services;

import java.util.List;

import org.springframework.stereotype.Service;

import com.codingdojo.renthouse.models.Role;
import com.codingdojo.renthouse.repositories.RoleRepository;

@Service
public class RoleService {
	private RoleRepository roleRepository;

	public RoleService(RoleRepository roleRepository) {
		this.roleRepository = roleRepository;
	}

	public List<Role> findAll() {
		return roleRepository.findAll();
	}

}
