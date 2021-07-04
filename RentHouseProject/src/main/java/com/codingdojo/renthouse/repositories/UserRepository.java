package com.codingdojo.renthouse.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.codingdojo.renthouse.models.User;
@Repository
public interface UserRepository extends CrudRepository<User, Long> {
	User findByEmail(String email);

}