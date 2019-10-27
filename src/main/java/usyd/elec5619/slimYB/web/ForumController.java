package usyd.elec5619.slimYB.web;

import java.io.IOException;
import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import usyd.elec5619.slimYB.domain.Forum;
import usyd.elec5619.slimYB.service.ForumManager;

/**
 * Handles requests for the application marketplace page.
 */
@Controller
@RequestMapping("/forum")
public class ForumController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	/**
	 * administrator home page
	 * @param model - jsp context
	 * @return
	 */
	@Resource(name="forumManager")
	private ForumManager forumManager;
	
	@RequestMapping(value = "/forum", method = RequestMethod.GET)
	public String home(Model model) {

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("now", formattedDate );
		model.addAttribute("title", "Forum");


		return "adminSystem/forumhome";
	}

	
	@RequestMapping(value = "/view/{id}", method = RequestMethod.GET)
    @ResponseBody
    public Forum jsonView(@PathVariable int id){
		
			
        System.out.println("succ");
        
        return forumManager.getForumById(id);
			
    }


//	@RequestMapping(value = "/view", method = RequestMethod.GET)
//    @ResponseBody
//    public List<Forum> view(){
//
//        System.out.println("view username:");
//
//        return forumManager.getAllForums();
//    }



}
