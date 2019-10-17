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
public class FriendController {
	
	private static final Logger logger = LoggerFactory.getLogger(FriendController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/friends", method = RequestMethod.GET)
	public String friend(Model model) {
		
//		Date date = new Date();
//		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG);
//		
//		String formattedDate = dateFormat.format(date);
//		
//		model.addAttribute("now", formattedDate );
//		model.addAttribute("title", "Friend");
		
		return "Friend/friends";
	}
	
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/friends/friendlist", method = RequestMethod.GET)
	public String friendlist(Model model) {
		
//		Date date = new Date();
//		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG);
//		
//		String formattedDate = dateFormat.format(date);
//		
//		model.addAttribute("now", formattedDate );
//		model.addAttribute("title", "Friend");
		
		return "Friend/friendlist";
	}
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/friends/chatzone", method = RequestMethod.GET)
	public String chatzone(Model model) {
		
//		Date date = new Date();
//		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG);
//		
//		String formattedDate = dateFormat.format(date);
//		
//		model.addAttribute("now", formattedDate );
//		model.addAttribute("title", "Friend");
		
		return "Friend/chatzone";
	}
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/friends/chatzone/chatwithfriend", method = RequestMethod.GET)
	public String chatwithfriend(Model model) {
		
//		Date date = new Date();
//		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG);
//		
//		String formattedDate = dateFormat.format(date);
//		
//		model.addAttribute("now", formattedDate );
//		model.addAttribute("title", "Friend");
		
		return "Friend/chatwithfriend";
	}
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/friends/addfriend", method = RequestMethod.GET)
	public String addfriend(Model model) {
		
//		Date date = new Date();
//		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG);
//		
//		String formattedDate = dateFormat.format(date);
//		
//		model.addAttribute("now", formattedDate );
//		model.addAttribute("title", "Friend");
		
		return "Friend/addfriend";
	}
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/friends/addfriend/addfriendinterest", method = RequestMethod.GET)
	public String addfriendinterest(Model model) {
		
//		Date date = new Date();
//		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG);
//		
//		String formattedDate = dateFormat.format(date);
//		
//		model.addAttribute("now", formattedDate );
//		model.addAttribute("title", "Friend");
		
		return "Friend/addfriendinterest";
	}
	
}
