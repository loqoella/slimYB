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

import usyd.elec5619.slimYB.domain.Application;
import usyd.elec5619.slimYB.domain.Forum;
import usyd.elec5619.slimYB.service.ApplicationManager;
import usyd.elec5619.slimYB.service.ForumManager;


@Controller
@RequestMapping("/applicationcheck")
public class ApplicationCheckController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
		
	@Resource(name="applicationManager")
	private ApplicationManager applicationManager;
	
	@Resource(name="forumManager")
	private ForumManager forumManager;
	
	@RequestMapping(value = "/applicationcheck", method = RequestMethod.GET)
	public String home(Model model,@RequestParam("id") int id) throws Exception {
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("now", formattedDate );
		model.addAttribute("title", "User Application Check");
		model.addAttribute("application", applicationManager.getApplicationById(id));
			
		return "adminSystem/applicationcheck";
	}
	
	
	@RequestMapping(value="/approveApplication",method = RequestMethod.GET)
	public String approve(Model model,@RequestParam("id") int id) throws Exception {
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("now", formattedDate );
		model.addAttribute("title", "Approved");
		Application app= applicationManager.getApplicationById(id);
		
		
		Forum fo=new Forum();
		fo.setId(app.getId());
		fo.setTag(app.getTag());
		fo.setUser(app.getUser());			//convert the application to object Forum, with same formatting.
		fo.setContent(app.getContent());
		fo.setTitle(app.getTitle());
		
		
		applicationManager.deleteApplication(id);//delete this application
		forumManager.addForum(fo);				//add new forum to database
			
		return "adminSystem/approveApplication";
	}
	
	
	@RequestMapping(value="/declineApplication",method = RequestMethod.GET)
	public String decline(Model model,@RequestParam("id") int id) throws Exception {

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("now", formattedDate );
		model.addAttribute("title", "Decline");
		applicationManager.deleteApplication(id);
		
		return "adminSystem/declineApplication";
	}
	
	
}
	
	

