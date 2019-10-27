package usyd.elec5619.slimYB.web;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import usyd.elec5619.slimYB.service.FriendManager;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping("/friends")
public class FriendController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * friend page
	 * @param model - jsp context
	 * @return
	 */
	@RequestMapping(value = "", method = RequestMethod.GET)
	public String friend(Model model) {
		return "Friend/friends";
	}

//	@RequestMapping(value = "/friends/friendlist:", method = RequestMethod.GET)
//	public String friendlist(Model model) throws Exception {
//	
////		model.addAttribute("friends", friendManager.getFriends(id));
//		return "Friend/friendlist";
//	}
//	
//	/**
//	 * Simply selects the home view to render by returning its name.
//	 */
//	@RequestMapping(value = "/friends/chatzone", method = RequestMethod.GET)
//	public String chatzone(Model model) {
//		return "Friend/chatzone";
//	}
//	
//	/**
//	 * Simply selects the home view to render by returning its name.
//	 */
//	@RequestMapping(value = "/friends/chatzone/chatwithfriend", method = RequestMethod.GET)
//	public String chatwithfriend(Model model) {
//		return "Friend/chatwithfriend";
//	}
//	
//	@RequestMapping(value = "/friends/addfriend", method = RequestMethod.GET)
//	public String addfriend(Model model, @RequestParam("id") int id, @RequestParam("friend") String friend) throws Exception {
////		friendManager.addFriend(id, friend);
//		return "Friend/addfriend";
//	}
//	
//	/**
//	 * Simply selects the home view to render by returning its name.
//	 */
//	@RequestMapping(value = "/friends/addfriend/addfriendinterest", method = RequestMethod.GET)
//	public String addfriendinterest(Model model) {
//		return "Friend/addfriendinterest";
//	}
	
}
