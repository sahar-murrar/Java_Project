package com.codingdojo.renthouse.models;

import java.time.LocalDate;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "properties")
public class Property {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	@NotEmpty(message = "Type must not be empty!")
	private String type;
	@NotNull(message = "Area must not be empty!")
	private float area;
	@NotNull(message = "Bedrooms must not be empty!")
	private int bedrooms;
	@NotNull(message = "Bathrooms must not be empty!")
	private int bathrooms;
	@NotNull(message = "Price must not be empty!")
	private float price;
	@NotEmpty(message = "Description must not be empty!")
	private String description;
	@NotEmpty(message = "Status must not be empty!")
	private String status;
	@NotEmpty(message = "City must not be empty!")
	private String city;
	private String image;

//	@NotEmpty(message = "Start Reserve Date must not be empty!")
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private LocalDate startReserveDate;
//	@NotEmpty(message = "End Reserve Date must not be empty!")
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private LocalDate endReserveDate;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "owner_id")
	private User owner;

//	@ManyToMany(fetch = FetchType.LAZY)
//	@JoinTable(name = "renting", joinColumns = @JoinColumn(name = "property_id"), inverseJoinColumns = @JoinColumn(name = "client_id"))
//	private List<User> clients;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "client_id")
	private User client;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "category_id")
	private PropertyCategory category;

	@Column(updatable = false)
	private Date createdAt;
	private Date updatedAt;

	public Property() {

	}

	public Property(String type, float area, int bedrooms, int bathrooms, float price, User owner, User client,
			PropertyCategory category, String status, String city, String description, String image, LocalDate startReserveDate,
			LocalDate endReserveDate) {
		this.type = type;
		this.area = area;
		this.bedrooms = bedrooms;
		this.bathrooms = bathrooms;
		this.price = price;
		this.owner = owner;
		this.client = client;
		this.category = category;
		this.status = status;
		this.city = city;
		this.description = description;
		this.image = image;
		this.endReserveDate=endReserveDate;
		this.startReserveDate=startReserveDate;
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

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public PropertyCategory getCategory() {
		return category;
	}

	public void setCategory(PropertyCategory category) {
		this.category = category;
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

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}
	

	public LocalDate getStartReserveDate() {
		return startReserveDate;
	}

	public void setStartReserveDate(LocalDate startReserveDate) {
		this.startReserveDate = startReserveDate;
	}

	public LocalDate getEndReserveDate() {
		return endReserveDate;
	}

	public void setEndReserveDate(LocalDate endReserveDate) {
		this.endReserveDate = endReserveDate;
	}
	
	public User getClient() {
		return client;
	}

	public void setClient(User client) {
		this.client = client;
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
