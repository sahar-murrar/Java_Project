package com.codingdojo.renthouse.services;

import java.util.List;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.codingdojo.renthouse.models.User;
import com.codingdojo.renthouse.repositories.RoleRepository;
import com.codingdojo.renthouse.repositories.UserRepository;

@Service
public class UserService {
	private UserRepository userRepository;
	private RoleRepository roleRepository;
	private BCryptPasswordEncoder bCryptPasswordEncoder;

	public UserService(UserRepository userRepository, RoleRepository roleRepository,
			BCryptPasswordEncoder bCryptPasswordEncoder) {
		this.userRepository = userRepository;
		this.roleRepository = roleRepository;
		this.bCryptPasswordEncoder = bCryptPasswordEncoder;
	}

	// 1
	public void saveWithOwnerRole(User user) {
		user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
		user.setRoles(roleRepository.findByName("ROLE_OWNER"));
		userRepository.save(user);
	}

	// 2
	public void saveUserWithAdminRole(User user) {
		user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
		user.setRoles(roleRepository.findByName("ROLE_ADMIN"));
		userRepository.save(user);
	}
	
	// 3
	public void saveUserWithClientRole(User user) {
		user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
		user.setRoles(roleRepository.findByName("ROLE_CLIENT"));
		userRepository.save(user);
	}

	// 4
	public User findByUsername(String email) {
		return userRepository.findByEmail(email);
	}
	
	public User findById(Long id) {
		return userRepository.findById(id).orElse(null);
	}
	public User updateUser(User user) {
		return userRepository.save(user);
	}
	public List<User> findAll(){
		return userRepository.findAll();
	}
	public void deleteUser(User user) {
		userRepository.delete(user);
	}

}
