package com.codingdojo.renthouse.controllers;

import java.security.Principal;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.codingdojo.renthouse.models.User;
import com.codingdojo.renthouse.services.RoleService;
import com.codingdojo.renthouse.services.UserService;

@Controller
public class UserController {
	private UserService userService;
	private RoleService roleService;

	public UserController(UserService userService, RoleService roleService) {
		this.userService = userService;
		this.roleService = roleService;
	}
	@RequestMapping("/mainPage")
	public String mainPage() {
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
			session.setAttribute("currentUser", user);
			model.addAttribute("currentUser", user);
			userService.saveUserWithAdminRole(user);
			return "successRegistration.jsp";
		} else if (role.equals("CLIENT")) {
			session.setAttribute("currentUser", user);
			model.addAttribute("currentUser", user);
			userService.saveUserWithClientRole(user);
			return "successRegistration.jsp";
		} else if (role.equals("OWNER")) {
			session.setAttribute("currentUser", user);
			model.addAttribute("currentUser", user);
			userService.saveWithOwnerRole(user);
			return "successRegistration.jsp";
		}

		return "registration.jsp";
	}
	
	@RequestMapping(value = {"/","/home"})
    public String home(Principal principal, Model model, HttpSession session) {
        // 1
        String username = principal.getName();
        model.addAttribute("currentUser", userService.findByUsername(username));
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
	
//	@RequestMapping("/logout")
//	public String logout() {
//		
//	}

}
