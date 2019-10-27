package usyd.elec5619.slimYB.web;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.ui.Model;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import usyd.elec5619.slimYB.domain.User;
import usyd.elec5619.slimYB.service.UserManager;

@Controller
@RequestMapping("/login")
@SessionAttributes("currUser")
public class LoginController {
	
private static final Logger logger = LoggerFactory.getLogger(LoginController.class);

	@Resource(name="userManager")
	private UserManager userManager;
	
	@RequestMapping(value = "", method = RequestMethod.GET)
	public String home(Model model) {
		
		model.addAttribute("title", "Login");		
		
		return "login";
	}
	
	@RequestMapping(value = "", method = RequestMethod.POST)	
	public String login(Model model,HttpServletRequest request) throws Exception {
		
		String email=request.getParameter("email-address");
		String userPwd=request.getParameter("password");
		User user = new User();
		user = userManager.getUserByEmail(email);
		
		String password_validation = user.getPassword();
		if(password_validation.equals(userPwd)) {
			request.getSession(true).setAttribute("currUser", user);			
			if(email.equals("admin"))
				return "adminSystem/adminHome";
			return "redirect:/";
		}
		else {
			return "login-error";
		}
			
	}	
	
	
	
}
