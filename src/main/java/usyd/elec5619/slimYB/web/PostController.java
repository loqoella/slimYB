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
import org.springframework.web.bind.annotation.RequestParam;

import usyd.elec5619.slimYB.domain.Forum;
import usyd.elec5619.slimYB.service.ForumManager;
import usyd.elec5619.slimYB.service.UserManager;

/**
 * Handles requests for the application marketplace page.
 */
@Controller
@RequestMapping("/post")
public class PostController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * administrator home page
	 * @param model - jsp context
	 * @return
	 */
	@Resource(name="forumManager")
	private ForumManager forumManager;
	
	
	@RequestMapping(value = "/post", method = RequestMethod.GET)
	public String home(Model model,@RequestParam("id") int id)throws Exception {
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("now", formattedDate );
		model.addAttribute("title", "Post");
		model.addAttribute("forum",forumManager.getForumById(id));
		
		
		return "adminSystem/post";
	}
	
	
	@RequestMapping(value = "/deleteForum", method = RequestMethod.GET)
	public String delete(Model model,@RequestParam("id")int id) throws Exception {
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("now", formattedDate );
		model.addAttribute("title", "Deleted");
		forumManager.deleteForum(id);
		
		return "adminSystem/deleteForum";
	}
	
	

	@RequestMapping(value = "/editForum", method = RequestMethod.GET)
	public String edit(Model model,@RequestParam("id")int id) throws Exception {
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("now", formattedDate );
		model.addAttribute("title", "Deleted");
		model.addAttribute("forum",forumManager.getForumById(id));
		
		return "adminSystem/editForum";
	}
	
	
	@RequestMapping(value = "/updateForum", method = RequestMethod.GET)
	public String edit(Model model,HttpServletRequest request) throws Exception {
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG);
		
		String formattedDate = dateFormat.format(date);
		String title=request.getParameter("newTitle");
		String tag=request.getParameter("newTag");
		String content=request.getParameter("newContent");
		String user=request.getParameter("user");
		int id=Integer.parseInt(request.getParameter("id"));
		
		Forum nf=new Forum();
		nf.setUser(user);
		nf.setContent(content);
		nf.setId(id);
		nf.setTag(tag);
		nf.setTitle(title);		
		
		model.addAttribute("now", formattedDate );
		model.addAttribute("title", "Deleted");
		forumManager.updateForum(nf);
		
		return "adminSystem/updateForum";
	}
	
	
	
	
}