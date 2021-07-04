package com.codingdojo.renthouse.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.codingdojo.renthouse.models.Property;

public interface PropertyRepository extends CrudRepository<Property, Long>{
	List<Property> findAll();

}
