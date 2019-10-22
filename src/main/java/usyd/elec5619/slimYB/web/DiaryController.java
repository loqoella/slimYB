package usyd.elec5619.slimYB.web;

import java.text.DateFormat;
import java.text.ParseException;
import java.util.Date;
import java.util.Locale;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import usyd.elec5619.slimYB.service.DiaryManager;
import usyd.elec5619.slimYB.service.UserManager;

/**
 * Handles requests for the application home page.
 */
@Controller
public class DiaryController {
	
	private static final Logger logger = LoggerFactory.getLogger(DiaryController.class);
	
	@Resource(name="diaryManager")
	private DiaryManager diaryManager;
	
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/life-recording", method = RequestMethod.GET)
	public String Diary(Model model) {
		
		
		//test
		model.addAttribute("title", "Dairy");
		
		return "diary";
	}
	
	@RequestMapping(value = "/life-recording/calendar", method = RequestMethod.GET)
	public String Calendar(Model model) {
		
		//test
		model.addAttribute("title", "Calendar");
		
		return "calendar";
	}

	
	
	@RequestMapping(value = "/life-recording/personal-dairy", method = RequestMethod.GET)
	public String PersonanlD(Model model) {
		
		//test
		model.addAttribute("title", "Personal Diary");
		
		return "Personal-diary";
	}
	
	
	@RequestMapping(value = "/life-recording/add-recording", method = RequestMethod.GET)
	public String AddR(Model model){
		
		//test
		model.addAttribute("title", "Add recording");
		
		
		diaryManager.testAddDiary();
		return "add-recording";
	}
	
	
	@RequestMapping(value = "/life-recording/friend-recording", method = RequestMethod.GET)
	public String FriendR(Model model) {
		
		//test
		model.addAttribute("title", "Friend recording");
		
		return "friend-recording";
	}
}
