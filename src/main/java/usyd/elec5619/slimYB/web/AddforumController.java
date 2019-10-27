package usyd.elec5619.slimYB.web;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import usyd.elec5619.slimYB.domain.Application;
import usyd.elec5619.slimYB.domain.Forum;
import usyd.elec5619.slimYB.service.ApplicationManager;
import usyd.elec5619.slimYB.service.ForumManager;

@Controller
@RequestMapping("/addforum")
public class AddforumController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * administrator home page
	 * @param model - jsp context
	 * @return
	 */
	@Resource(name="applicationManager")
	private ApplicationManager applicationManager;
	
	@RequestMapping(value = "/addforum", method = RequestMethod.GET)
	public String home(Model model) {
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("now", formattedDate );
		model.addAttribute("title", "AddForum");
		
		
		return "adminSystem/addforum";
	}
	
	@RequestMapping(value = "/postForum", method = RequestMethod.GET)
	public String post(Model model,HttpServletRequest request) throws Exception {
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG);
		
		String formattedDate = dateFormat.format(date);
		String title=request.getParameter("title");
		String tag=request.getParameter("tag");
		String content=request.getParameter("content");
		String user="Administrator";
		model.addAttribute("now", formattedDate );
		model.addAttribute("title", "AddForum");
		
		Application app=new Application();
		
		app.setTag(tag);
		app.setUser(user);			
		app.setContent(content);
		app.setTitle(title);
		
		applicationManager.addApplication(app);
		
		return "adminSystem/forumhome";
	}
	
}
