package com.codingdojo.renthouse.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.codingdojo.renthouse.models.Property;
import com.codingdojo.renthouse.models.User;

public interface PropertyRepository extends CrudRepository<Property, Long>{
	List<Property> findAll();
	List<Property> findByStatus(String status);
	List<Property> findByClient(User client);
	List<Property> findByOwner(User owner);

}
