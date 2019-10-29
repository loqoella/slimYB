package usyd.elec5619.slimYB.web;

import java.util.ArrayList;
import java.util.Arrays;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.security.core.Authentication;
//import org.springframework.security.core.context.SecurityContextHolder;

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
	
	private int userId = 1;
	
	@RequestMapping(value = "/friends/friendlist", method = RequestMethod.GET)
	public String get(Model model) throws Exception {
		ArrayList<Profile> friends = new ArrayList<Profile>();
		for(String friend: friendManager.getAllFriends(userId)) {
			if(friend.length() == 0) {
				continue;
			}
			Profile profile = (Profile) profileManager.getProfileById(Integer.parseInt(friend));
			friends.add(profile);
		}
		model.addAttribute("friends", friends);
		return "Friend/friendlist";
	}
	
	@RequestMapping(value = "/friends/delete", method = RequestMethod.GET)
	public String delete(Model model, @RequestParam("id") int id) throws Exception {
		System.out.println("Delete ..........");
		friendManager.deleteFriend(userId, id);
		friendManager.deleteFriend(id, userId);
		model.addAttribute("friends", friendManager.getAllFriends(userId));
		return "redirect:/friends/friendlist";
	}
	
	@RequestMapping(value = "/friends/editalias", method = RequestMethod.GET)
	public String editalias(Model model, @RequestParam("id") int id, @RequestParam("newname") String newName) throws Exception {
		profileManager.updateProfileNickname(id, newName);
		model.addAttribute("friends", friendManager.getAllFriends(userId));
		return "redirect:/friends/friendlist";
	}
	
	@RequestMapping(value = "/friends/chatzone", method = RequestMethod.GET)
	public String chatzone(Model model) throws Exception {
		ArrayList<Profile> friends = new ArrayList<Profile>();
		for(String friend: friendManager.getAllFriends(userId)) {
			if(friend.length() == 0) {
				continue;
			}
			Profile profile = (Profile) profileManager.getProfileById(Integer.parseInt(friend));
			friends.add(profile);
		}
		model.addAttribute("friends", friends);
		return "Friend/chatzone";
	}
	
	@RequestMapping(value = "/friends/chatwithfriend", method = RequestMethod.GET)
	public String chatwithfriend(Model model) {
		return "Friend/chatwithfriend";
	}
	
	@RequestMapping(value = "/friends/addfriend", method = RequestMethod.GET)
	public String search(Model model) throws Exception {
		ArrayList<Profile> users = new ArrayList<Profile>();
		ArrayList<String> list = new ArrayList<String>(Arrays.asList(friendManager.getAllFriends(userId)));
		for(int j=0; j<userManager.getAllOtherUsers().size();j++ ) {
			User user = userManager.getAllOtherUsers().get(j);
			if (!list.contains(String.valueOf(user.getId()))) {
				Profile profile = (Profile) profileManager.getProfileById((int)user.getId());
				users.add(profile);
			}
		}
		model.addAttribute("users", users);
		return "Friend/addfriend";
	}		
	
	@RequestMapping(value = "/friends/add", method = RequestMethod.GET)
	public String addfriendtolist(Model model, @RequestParam("id") int id) throws Exception{
		friendManager.addFriend(userId,id);
		friendManager.addFriend(id, userId);
		model.addAttribute("users", friendManager.getAllFriends(userId));
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
		ArrayList<String> list = new ArrayList<String>(Arrays.asList(friendManager.getAllFriends(userId)));
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
		ArrayList<Profile> users = new ArrayList<Profile>();
		ArrayList<String> list = new ArrayList<String>(Arrays.asList(friendManager.getAllFriends(userId)));
		for(int j=0; j<userManager.getAllOtherUsers().size();j++ ) {
			User user = userManager.getAllOtherUsers().get(j);
			if (!list.contains(String.valueOf(user.getId()))) {
				Profile profile = (Profile) profileManager.getProfileById((int)user.getId());
				if(profile.getUsername().equals(username)) {
					users.add(profile);
				}
			}
		}
		model.addAttribute("users", users);
//		for(int j = 0; j < userManager.getAllOtherUsers().size(); j++) {
//			User user = userManager.getAllOtherUsers().get(j);
//			if(!list.contains(String.valueOf(user.getId()))) {
//				Profile profile = (Profile)profileManager.getProfileById((int)user.getId());
//				if(profile.getUsername().equals(username)) {
//					users.add(user);
//				}
//			}
//		}
		return "Friend/addfriend";
	}
	
}
