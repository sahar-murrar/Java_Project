package com.codingdojo.renthouse.controllers;

import java.security.Principal;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.codingdojo.renthouse.models.Property;
import com.codingdojo.renthouse.models.Role;
import com.codingdojo.renthouse.models.User;
import com.codingdojo.renthouse.services.PropertyService;
import com.codingdojo.renthouse.services.RoleService;
import com.codingdojo.renthouse.services.UserService;

@Controller
public class UserController {
	private UserService userService;
	private RoleService roleService;
	private PropertyService propertyService;

	public UserController(UserService userService, RoleService roleService, PropertyService propertyService) {
		this.userService = userService;
		this.roleService = roleService;
		this.propertyService = propertyService;
	}

	@RequestMapping("/mainPage")
	public String mainPage(Model model) {
		model.addAttribute("property", new Property());
		return "mainPage.jsp";
	}

	@RequestMapping("/registration")
	public String registerForm(Model model) {
		model.addAttribute("user", new User());
		return "registration.jsp";
	}

	@PostMapping("/registration")
	public String registration(@Valid @ModelAttribute("user") User user, BindingResult result, Model model,
			HttpSession session, @RequestParam("role") String role) {
		if (result.hasErrors()) {
			return "registration.jsp";
		}
		if (role.equals("ADMIN")) {
			model.addAttribute("currentUser", user);
			userService.saveUserWithAdminRole(user);
			return "successRegistration.jsp";
		} else if (role.equals("CLIENT")) {
			model.addAttribute("currentUser", user);
			userService.saveUserWithClientRole(user);
			return "successRegistration.jsp";
		} else if (role.equals("OWNER")) {
			model.addAttribute("currentUser", user);
			userService.saveWithOwnerRole(user);
			return "successRegistration.jsp";
		}

		return "registration.jsp";
	}

	@RequestMapping(value = { "/", "/home" })
	public String home(Principal principal, Model model, HttpSession session) {
		// 1
		String username = principal.getName();
		model.addAttribute("currentUser", userService.findByUsername(username));
		session.setAttribute("currentUser", userService.findByUsername(username));
		return "home.jsp";
	}

	@RequestMapping("/login")
	public String login(@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout, Model model) {
		if (error != null) {
			model.addAttribute("errorMessage", "Invalid Credentials, Please try again.");
		}
		if (logout != null) {
			model.addAttribute("logoutMessage", "Logout Successful!");
		}
		return "login.jsp";
	}

	@PostMapping("/serach_property")
	public String serach_property(@RequestParam("type") String type, @RequestParam("area") String area,
			@RequestParam("bedrooms") String bedrooms, @RequestParam("bathrooms") String bathrooms,
			@RequestParam("city") String city, Model model) {
		List<Property> allProperties = propertyService.findAll();
		List<Property> wantedProperties = new ArrayList<Property>();
		if (area == "" && bedrooms == "" && bathrooms == "") {
			for (int i = 0; i < allProperties.size(); i++) {
				if (allProperties.get(i).getType().equals(type) && allProperties.get(i).getCity().equals(city)) {
					wantedProperties.add(allProperties.get(i));
				}

			}

		} else if (area == "" && bedrooms == "") {
			int prop_bathrooms = Integer.parseInt(bathrooms);
			for (int i = 0; i < allProperties.size(); i++) {
				if (allProperties.get(i).getType().equals(type) && allProperties.get(i).getCity().equals(city)
						&& allProperties.get(i).getBathrooms() == prop_bathrooms) {
					wantedProperties.add(allProperties.get(i));
				}

			}

		} else if (bedrooms == "" && bathrooms == "") {
			float prop_area = Float.parseFloat(area);
			for (int i = 0; i < allProperties.size(); i++) {
				if (allProperties.get(i).getType().equals(type) && allProperties.get(i).getCity().equals(city)
						&& allProperties.get(i).getArea() == prop_area) {
					wantedProperties.add(allProperties.get(i));
				}

			}

		} else if (area == "" && bathrooms == "") {
			int prop_bedrooms = Integer.parseInt(bedrooms);
			for (int i = 0; i < allProperties.size(); i++) {
				if (allProperties.get(i).getType().equals(type) && allProperties.get(i).getCity().equals(city)
						&& allProperties.get(i).getBedrooms() == prop_bedrooms) {
					wantedProperties.add(allProperties.get(i));
				}

			}

		} else if (area == "") {
			int prop_bedrooms = Integer.parseInt(bedrooms);
			int prop_bathrooms = Integer.parseInt(bathrooms);
			for (int i = 0; i < allProperties.size(); i++) {
				if (allProperties.get(i).getType().equals(type) && allProperties.get(i).getCity().equals(city)
						&& allProperties.get(i).getBathrooms() == prop_bathrooms
						&& allProperties.get(i).getBedrooms() == prop_bedrooms) {
					wantedProperties.add(allProperties.get(i));
				}

			}
		}

		else if (bedrooms == "") {
			float prop_area = Float.parseFloat(area);
			int prop_bathrooms = Integer.parseInt(bathrooms);
			for (int i = 0; i < allProperties.size(); i++) {
				if (allProperties.get(i).getType().equals(type) && allProperties.get(i).getCity().equals(city)
						&& allProperties.get(i).getBathrooms() == prop_bathrooms
						&& allProperties.get(i).getArea() == prop_area) {
					wantedProperties.add(allProperties.get(i));
				}

			}
		}

		else if (bathrooms == "") {
			float prop_area = Float.parseFloat(area);
			int prop_bedrooms = Integer.parseInt(bedrooms);
			for (int i = 0; i < allProperties.size(); i++) {
				if (allProperties.get(i).getType().equals(type) && allProperties.get(i).getCity().equals(city)
						&& allProperties.get(i).getBedrooms() == prop_bedrooms
						&& allProperties.get(i).getArea() == prop_area) {
					wantedProperties.add(allProperties.get(i));
				}

			}
		}

		else if (area != "" && bedrooms != "" && bathrooms != "") {
			float prop_area = Float.parseFloat(area);
			int prop_bedrooms = Integer.parseInt(bedrooms);
			int prop_bathrooms = Integer.parseInt(bathrooms);
			for (int i = 0; i < allProperties.size(); i++) {
				if (allProperties.get(i).getType().equals(type) && allProperties.get(i).getArea() == prop_area
						&& allProperties.get(i).getBathrooms() == prop_bathrooms
						&& allProperties.get(i).getBedrooms() == prop_bedrooms
						&& allProperties.get(i).getCity().equals(city)) {
					wantedProperties.add(allProperties.get(i));
				}

			}
		}
		model.addAttribute("wantedProperties", wantedProperties);
		return "propertyList.jsp";
	}

	@PostMapping("/create_property")
	public String create_property(@Valid @ModelAttribute("property") Property property, BindingResult result,
			HttpSession session) {
		if (result.hasErrors()) {
			return "mainPage.jsp";
		}
		User user = (User) session.getAttribute("currentUser");
		if(user == null) {
			return "redirect:/login";
		}
		List<Role> userRolles = user.getRoles();
		for (int j = 0; j < userRolles.size(); j++) {
			if (userRolles.get(j).getName().equals("ROLE_OWNER")) {
				property.setOwner(user);
				propertyService.createProperty(property, property.getType(), user);
				return "redirect:/mainPage";
			}
		}


		return "redirect:/mainPage";

	}
	
	@RequestMapping("/view_allProperties")
	public String view_allProperties(Model model){
		List<Property> allProperties= propertyService.findAll();
		model.addAttribute("allProperties", allProperties);
		return "view_properties.jsp";
		
	}


}
