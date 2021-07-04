package com.codingdojo.renthouse.services;

import java.util.List;

import org.springframework.stereotype.Service;

import com.codingdojo.renthouse.models.Property;
import com.codingdojo.renthouse.models.User;
import com.codingdojo.renthouse.repositories.CategoryRepository;
import com.codingdojo.renthouse.repositories.PropertyRepository;

@Service
public class PropertyService {
	private PropertyRepository propertyRepository;
	private CategoryRepository categoryRepository;

	public PropertyService(PropertyRepository propertyRepository, CategoryRepository categoryRepository) {
		this.propertyRepository = propertyRepository;
		this.categoryRepository = categoryRepository;
	}
	
	public List<Property> findAll(){
		return propertyRepository.findAll();
	}
	
	public Property createProperty(Property p, String type, User user) {
		p.setCategory(categoryRepository.findByName(type));
		p.setOwner(user);
		return propertyRepository.save(p);
	}

}
