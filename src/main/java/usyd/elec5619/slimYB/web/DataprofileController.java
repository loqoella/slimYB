package usyd.elec5619.slimYB.web;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import usyd.elec5619.slimYB.service.UserManager;
import usyd.elec5619.slimYB.service.ProfileManager;

@Controller
@RequestMapping("/profiledata")
public class DataprofileController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * administrator home page
	 * @param model - jsp context
	 * @return
	 */
	@Resource(name="userManager")
	private UserManager userManager;
	
	@Resource(name="profileManager")
	private ProfileManager profileManager;
	
	
	
	@RequestMapping(value = "/profiledata", method = RequestMethod.GET)
	public String home(Model model,@RequestParam("id") int id) throws Exception {
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("now", formattedDate );
		model.addAttribute("title", "Profiledata");
		model.addAttribute("user",userManager.getUserById(id));
		model.addAttribute("profile",profileManager.getProfileById(id));
		
		
		
		return "adminSystem/profiledata";
	}
	

	
}
