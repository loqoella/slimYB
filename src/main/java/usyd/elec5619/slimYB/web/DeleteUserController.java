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

/**
 * Handles requests for the application marketplace page.
 */
@Controller
@RequestMapping("/deleteUser")
public class DeleteUserController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * administrator home page
	 * @param model - jsp context
	 * @return
	 */
	@Resource(name="userManager")
	private UserManager userManager;
	
	@RequestMapping(value = "/deleteUser", method = RequestMethod.GET)
	public String home(Model model,@RequestParam("id")int id) throws Exception {
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("now", formattedDate );
		model.addAttribute("title", "Deleted");
		userManager.deleteUser(id);
		
		return "adminSystem/deleteUser";
	}
	
}
