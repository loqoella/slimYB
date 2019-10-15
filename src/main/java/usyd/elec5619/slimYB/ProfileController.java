package usyd.elec5619.slimYB;

import java.text.DateFormat;
import java.util.Date;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

public class ProfileController {

private static final Logger logger = LoggerFactory.getLogger(ProfileController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/profile", method = RequestMethod.GET)
	public String profile(Model model) {
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("now", formattedDate );
		model.addAttribute("title", "Profile");
		
		return "profile";
	}	

}
