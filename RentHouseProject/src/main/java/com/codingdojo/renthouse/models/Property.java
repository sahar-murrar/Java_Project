package com.codingdojo.renthouse.models;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;

@Entity
@Table(name = "properties")
public class Property {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	@NotEmpty(message = "Type must not be empty!")
	private String type;
	@NotEmpty(message = "Area must not be empty!")
	private float area;
	@NotEmpty(message = "Bedrooms must not be empty!")
	private int bedrooms;
	@NotEmpty(message = "Bathrooms must not be empty!")
	private int bathrooms;
	@NotEmpty(message = "Price must not be empty!")
	private float price;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "owner_id")
	private User owner;

	@ManyToMany(fetch = FetchType.LAZY)
	@JoinTable(name = "renting", joinColumns = @JoinColumn(name = "property_id"), inverseJoinColumns = @JoinColumn(name = "client_id"))
	private List<User> clients;

	@ManyToMany(fetch = FetchType.LAZY)
	@JoinTable(name = "properties_categories", joinColumns = @JoinColumn(name = "property_id"), inverseJoinColumns = @JoinColumn(name = "category_id"))
	private List<PropertyCategory> categories;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "property_id")
	private PropertyCategory property;

	@Column(updatable = false)
	private Date createdAt;
	private Date updatedAt;

	public Property() {

	}

	public Property(String type, float area, int bedrooms, int bathrooms, float price, User owner, List<User> clients,
			List<PropertyCategory> categories, PropertyCategory property) {
		this.type = type;
		this.area = area;
		this.bedrooms = bedrooms;
		this.bathrooms = bathrooms;
		this.price = price;
		this.owner = owner;
		this.clients = clients;
		this.categories = categories;
		this.property = property;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public float getArea() {
		return area;
	}

	public void setArea(float area) {
		this.area = area;
	}

	public int getBedrooms() {
		return bedrooms;
	}

	public void setBedrooms(int bedrooms) {
		this.bedrooms = bedrooms;
	}

	public int getBathrooms() {
		return bathrooms;
	}

	public void setBathrooms(int bathrooms) {
		this.bathrooms = bathrooms;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

	public User getOwner() {
		return owner;
	}

	public void setOwner(User owner) {
		this.owner = owner;
	}

	public List<User> getClients() {
		return clients;
	}

	public void setClients(List<User> clients) {
		this.clients = clients;
	}

	public List<PropertyCategory> getCategories() {
		return categories;
	}

	public void setCategories(List<PropertyCategory> categories) {
		this.categories = categories;
	}

	public PropertyCategory getProperty() {
		return property;
	}

	public void setProperty(PropertyCategory property) {
		this.property = property;
	}

	public Date getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}

	public Date getUpdatedAt() {
		return updatedAt;
	}

	public void setUpdatedAt(Date updatedAt) {
		this.updatedAt = updatedAt;
	}

	@PrePersist
	protected void onCreate() {
		this.createdAt = new Date();
	}

	@PreUpdate
	protected void onUpdate() {
		this.updatedAt = new Date();
	}

}
