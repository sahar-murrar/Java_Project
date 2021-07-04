package com.codingdojo.renthouse.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import com.codingdojo.renthouse.models.PropertyCategory;

public interface CategoryRepository extends CrudRepository<PropertyCategory, Long>{
	List<PropertyCategory> findAll();
	PropertyCategory findByName(String name);

}
