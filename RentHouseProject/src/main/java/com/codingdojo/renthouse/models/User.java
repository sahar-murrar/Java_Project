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
import javax.persistence.OneToMany;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

@Entity
@Table(name = "users")
public class User {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	@NotEmpty(message = "Name must not be empty!")
	private String name;
	@NotEmpty(message = "Email must not be empty!")
	@Pattern(regexp = "^[a-zA-Z0-9_!#$%&â€™*+/=?`{|}~^.-]+@[a-zA-Z0-9.-]+.[a-zA-Z0-9.-]+$", message = "Invalid email pattern")
    @Column(unique = true)
    private String email;
	@NotEmpty(message = "Phone Number must not be empty!")
//	@Pattern(regexp = "[0-9]{10}")
	private String phone;
	@NotEmpty(message = "City must not be empty!")
	private String city;
	@Size(min = 8, message = "Password must be at least 8 characters")
	private String password;
	@Transient
	private String passwordConfirmation;

	@Column(updatable = false)
	private Date createdAt;
	private Date updatedAt;

	@OneToMany(mappedBy = "owner", fetch = FetchType.LAZY)
	private List<Property> ownedProperties;

	@ManyToMany(fetch = FetchType.LAZY)
	@JoinTable(name = "renting", joinColumns = @JoinColumn(name = "client_id"), inverseJoinColumns = @JoinColumn(name = "property_id"))
	private List<Property> rentedProperties;

	@ManyToMany(fetch = FetchType.EAGER)
	@JoinTable(name = "users_roles", joinColumns = @JoinColumn(name = "user_id"), 
	inverseJoinColumns = @JoinColumn(name = "role_id"))
	private List<Role> roles;

	public User() {
	}

	public User(String name, String email, String phone, String city, String password, String role) {
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.city = city;
		this.password = password;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPasswordConfirmation() {
		return passwordConfirmation;
	}

	public void setPasswordConfirmation(String passwordConfirmation) {
		this.passwordConfirmation = passwordConfirmation;
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
	


	public List<Property> getOwnedProperties() {
		return ownedProperties;
	}

	public void setOwnedProperties(List<Property> ownedProperties) {
		this.ownedProperties = ownedProperties;
	}

	public List<Property> getRentedProperties() {
		return rentedProperties;
	}

	public void setRentedProperties(List<Property> rentedProperties) {
		this.rentedProperties = rentedProperties;
	}

	public List<Role> getRoles() {
		return roles;
	}

	public void setRoles(List<Role> roles) {
		this.roles = roles;
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
