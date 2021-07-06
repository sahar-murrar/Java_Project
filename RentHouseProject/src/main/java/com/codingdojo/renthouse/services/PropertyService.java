package com.codingdojo.renthouse.services;

import java.time.LocalDate;
import java.util.List;

import org.springframework.stereotype.Service;

import com.codingdojo.renthouse.models.Property;
import com.codingdojo.renthouse.models.User;
import com.codingdojo.renthouse.repositories.CategoryRepository;
import com.codingdojo.renthouse.repositories.PropertyRepository;
import com.codingdojo.renthouse.repositories.UserRepository;

@Service
public class PropertyService {
	private PropertyRepository propertyRepository;
	private CategoryRepository categoryRepository;
	private UserRepository userRepository;

	public PropertyService(PropertyRepository propertyRepository, CategoryRepository categoryRepository, UserRepository userRepository) {
		this.propertyRepository = propertyRepository;
		this.categoryRepository = categoryRepository;
		this.userRepository=userRepository;
	}
	
	public List<Property> findAll(){
		return propertyRepository.findAll();
	}
	
	public Property createProperty(Property p, String type, User user) {
		p.setCategory(categoryRepository.findByName(type));
		p.setOwner(user);
		return propertyRepository.save(p);
	}
	
	public List<Property> findByStatus(String status){
		return propertyRepository.findByStatus(status);
	}
	public Property findById(Long id) {
		return propertyRepository.findById(id).orElse(null);
	}
	public Property updateProperty(Property p, User u, LocalDate startReserveDate, LocalDate endReserveDate) {
		p.setStatus("rented");
//		p.setClient(u);
//		List<Property>list=u.getRentedProperties();
//		list.add(p);
//		u.setRentedProperties(list);
//		userRepository.save(u);
		p.setStartReserveDate(startReserveDate);
		p.setEndReserveDate(endReserveDate);
		return propertyRepository.save(p);
	}
	
	public List<Property> findByClient(User client){
		return propertyRepository.findByClient(client);
	}
	
	public List<Property> findByOwner(User owner){
		return propertyRepository.findByOwner(owner);
	}

}
