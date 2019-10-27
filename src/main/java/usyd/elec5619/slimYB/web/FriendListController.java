package usyd.elec5619.slimYB.web;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import usyd.elec5619.slimYB.domain.Profile;
import usyd.elec5619.slimYB.domain.User;
import usyd.elec5619.slimYB.service.FriendManager;
import usyd.elec5619.slimYB.service.ProfileManager;
import usyd.elec5619.slimYB.service.UserManager;

@Controller
public class FriendListController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * friendList page
	 * @param model - jsp context
	 * @return
	 */
	@Resource(name="friendManager")
	private FriendManager friendManager;
	
	@Resource(name="userManager")
	private UserManager userManager;
	
	@Resource(name="profileManager")
	private ProfileManager profileManager;
	
	@RequestMapping(value = "/friends/friendlist", method = RequestMethod.GET)
	public String get(Model model) throws Exception {
		model.addAttribute("friends", friendManager.getAllFriends(1));
		return "Friend/friendlist";
	}
	
	@RequestMapping(value = "/friends/delete", method = RequestMethod.GET)
	public String delete(Model model, @RequestParam("id") int id) throws Exception {
		friendManager.deleteFriend(1, id);
		friendManager.deleteFriend(id, 1);
		model.addAttribute("friends", friendManager.getAllFriends(1));
		return "redirect:/friends/friendlist";
	}
	
	@RequestMapping(value = "/friends/addfriend", method = RequestMethod.GET)
	public String search(Model model) throws Exception {
		ArrayList<User> users = new ArrayList<User>();
		ArrayList<String> list = new ArrayList<String>(Arrays.asList(friendManager.getAllFriends(1)));
		for(int j=0; j<userManager.getAllOtherUsers().size();j++ ) {
			User user = userManager.getAllOtherUsers().get(j);
			if (!list.contains(String.valueOf(user.getId()))) {
				users.add(user);
			}
		}
		model.addAttribute("users", users);
		return "Friend/addfriend";
	}	
	
	@RequestMapping(value = "/friends/add", method = RequestMethod.GET)
	public String addfriendtolist(Model model, @RequestParam("id") int id) throws Exception{
		friendManager.addFriend(1,id);
		friendManager.addFriend(id, 1);
		model.addAttribute("friends", friendManager.getAllFriends(1));
		return "redirect:/friends/friendlist";
	}
	
	@RequestMapping(value = "/friends/addfriendinterest", method = RequestMethod.GET)
	public String addfriendbyinterest(Model model) throws Exception{
		model.addAttribute("isShow", false);
		return "Friend/addfriendinterest";
	}
	
	@RequestMapping(value = "/friends/addfriendbygender", method = RequestMethod.GET)
	public String addfriendbygender(Model model, @RequestParam("gender") String gender) throws Exception{
		ArrayList<User> users = new ArrayList<User>();
		ArrayList<String> list = new ArrayList<String>(Arrays.asList(friendManager.getAllFriends(1)));
		for(int j = 0; j < userManager.getAllOtherUsers().size(); j++ ) {
			User user = userManager.getAllOtherUsers().get(j);
			if(!list.contains(String.valueOf(user.getId()))) {
				Profile profile = (Profile)profileManager.getProfileById((int)user.getId());
				if(profile.getGender().equals(gender)) {
					users.add(user);
				}
			}
		}
	    model.addAttribute("isShow", true);
	    model.addAttribute("users", users);
		return "Friend/addfriendinterest";
	}
	
	@RequestMapping(value = "/friends/addfriendbyusername", method = RequestMethod.GET)
	public String addfriendbyID(Model model, @RequestParam("username") String username) throws Exception{
		
		ArrayList<User> users = new ArrayList<User>();
		ArrayList<String> list = new ArrayList<String>(Arrays.asList(friendManager.getAllFriends(1)));
//		System.out.println(friendManager.getAllFriends(1));
		for(int j=0; j<userManager.getAllOtherUsers().size();j++ ) {
			User user = userManager.getAllOtherUsers().get(j);
			if(!list.contains(String.valueOf(user.getId()))) {
				Profile profile = (Profile)profileManager.getProfileById((int)user.getId());
//				System.out.println(profile.getId());
				if(profile.getUsername().equals(username)) {
					users.add(user);
				}
			}
		}
	    model.addAttribute("isShow", true);
	    model.addAttribute("users", users);
		return "Friend/addfriendinterest";
	}
	
}
