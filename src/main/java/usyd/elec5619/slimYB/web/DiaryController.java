package usyd.elec5619.slimYB.web;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class DiaryController {
	
	private static final Logger logger = LoggerFactory.getLogger(DiaryController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/life-recording", method = RequestMethod.GET)
	public String Diary(Model model) {
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("now", formattedDate );
		//test
		model.addAttribute("title", "Dairy");
		
		return "diary";
	}
	
	@RequestMapping(value = "/life-recording/calendar", method = RequestMethod.GET)
	public String Calendar(Model model) {
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("now", formattedDate );
		//test
		model.addAttribute("title", "Calendar");
		
		return "calendar";
	}

	
	
	@RequestMapping(value = "/life-recording/personal-dairy", method = RequestMethod.GET)
	public String PersonanlD(Model model) {
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("now", formattedDate );
		//test
		model.addAttribute("title", "Personal Diary");
		
		return "Personal-diary";
	}
	
	
	@RequestMapping(value = "/life-recording/add-recording", method = RequestMethod.GET)
	public String AddR(Model model) {
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("now", formattedDate );
		//test
		model.addAttribute("title", "Add recording");
		
		return "add-recording";
	}
	
	
	@RequestMapping(value = "/life-recording/friend-recording", method = RequestMethod.GET)
	public String FriendR(Model model) {
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("now", formattedDate );
		//test
		model.addAttribute("title", "Friend recording");
		
		return "friend-recording";
	}
}
