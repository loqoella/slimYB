package usyd.elec5619.slimYB.web;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import usyd.elec5619.slimYB.domain.User;
import usyd.elec5619.slimYB.service.UserManager;


@Controller
@RequestMapping("/userprofile")
public class ProfileController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Resource(name="userManager")
	private UserManager userManager;
	
	@RequestMapping(value = "/userprofile", method = RequestMethod.GET)
	public String home(Model model) throws Exception {
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("now", formattedDate );
		model.addAttribute("title", "User Profile");
	
		model.addAttribute("users",userManager.getAllUsers()) ;
		
		
		return "adminSystem/userprofilehome";
	}
	
	
}