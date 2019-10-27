package usyd.elec5619.slimYB.web;


import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.ui.Model;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import usyd.elec5619.slimYB.domain.Profile;
import usyd.elec5619.slimYB.domain.User;
import usyd.elec5619.slimYB.service.ProfileManager;
import usyd.elec5619.slimYB.service.UserManager;

@Controller
@RequestMapping("/register")
public class RegisterController {

private static final Logger logger = LoggerFactory.getLogger(RegisterController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@Resource(name="userManager")
	private UserManager userManager;
	@Resource(name="profileManager")
	private ProfileManager profileManager;
	
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String login(Model model,HttpServletRequest request) {
		
		model.addAttribute("title", "Register");
				
		return "register";
	}	
	
	@RequestMapping(value = "/registerData", method = RequestMethod.GET)
	public String post(Model model,HttpServletRequest request) throws Exception {
		
		model.addAttribute("title", "Register");
		String username=request.getParameter("username");
		String email=request.getParameter("email");
		String birthday=request.getParameter("day")+request.getParameter("month")+request.getParameter("year");
		int age=Integer.parseInt(request.getParameter("age"));
		String gender=request.getParameter("gender");
		String password=request.getParameter("password");
		
		User u = new User();
		u.setEmail(email);
		u.setPassword(password);
		u.setUsername(username);
		
		Profile p = new Profile();
		p.setAge(age);
		p.setEmail(email);
		p.setBirthday(birthday);
		p.setGender(gender);
		p.setUsername(username);
		
		userManager.addUser(u);
		profileManager.addProfile(p);		
		
		return "login";
	}	
	
}
