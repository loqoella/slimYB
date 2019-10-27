package usyd.elec5619.slimYB.web;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

import javax.annotation.Resource;

import org.hibernate.Hibernate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import usyd.elec5619.slimYB.domain.Comment;
import usyd.elec5619.slimYB.domain.Diary;
import usyd.elec5619.slimYB.service.DiaryManager;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping(value = "/life-recording")
public class DiaryController {

	private static final Logger logger = LoggerFactory.getLogger(DiaryController.class);

	@Resource(name = "diaryManager")
	private DiaryManager diaryManager;

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String Diary(Model model) {

		model.addAttribute("title", "Dairy");

		return "diary";
	}

	@RequestMapping(value = "/calendar", method = RequestMethod.GET)
	public String Calendar(Model model) {

		// test
		model.addAttribute("title", "Calendar");

		return "calendar";
	}

	@RequestMapping(value = "/readDiary", method = RequestMethod.GET)
	public ModelAndView readDiary(@RequestParam("date") String dateString) {

		// test
		Map map = new TreeMap();
		map.put("title", "read your diary");
		logger.info(dateString);
		Diary diary = diaryManager.findDiaryByDate(dateString);
		List<Comment> comments = diary.getCommentList();
		map.put("diary", diary);
		map.put("comments", comments);
		return new ModelAndView("Personal-diary", map);
	}

	@RequestMapping(value = "/editDiary", method = RequestMethod.GET)
	public ModelAndView editDiary(@RequestParam("id") long id) {
		// test
		Map map = new TreeMap();
		map.put("title", "edit your diary");
		Diary diary;
		if (id == -1) {
			Calendar calendar = Calendar.getInstance();
			diary = new Diary();
			diary.setDate(calendar.get(Calendar.YEAR) + "-" + (calendar.get(Calendar.MONTH)+1) + "-"
					+ calendar.get(Calendar.DATE));
			diary.setImage("");
			diary.setText("");
			diary.setTitle("");
			diary.setDiaryId(-1);
		} else{
			diary = diaryManager.getDiary(id);
		}
		map.put("diary", diary);
		return new ModelAndView("edit-recording", map);
	}

	@RequestMapping(value = "/addComment", method = RequestMethod.POST)
	@ResponseBody
	public String addComment(@RequestParam("comment") String commenString, @RequestParam("id") long id) {
		// test
		diaryManager.addComment(id, commenString);
		return "ok";
	}

	@RequestMapping(value = "/addOrUpdateDiary", method = RequestMethod.POST)
	@ResponseBody
	public String addOrUpdateDiary(Diary diary) {
		// test
		diaryManager.addOrUpdateDiary(diary);
		return "ok";
	}

	@RequestMapping(value = "/deleteDiary", method = RequestMethod.POST)
	@ResponseBody
	public String deleteDiary(@RequestParam("id") long id) {
		// test
		logger.info("delete diary id:" + id);
		Diary diary = new Diary();
		diary.setDiaryId(id);
		diaryManager.deleteDiary(diary);
		return "ok";
	}

	@RequestMapping(value = "/checkDiary", method = RequestMethod.GET)
	@ResponseBody
	public String checkDiary(@RequestParam("date") String dateString) throws ParseException {
		logger.info(dateString);
		Diary diary = diaryManager.findDiaryByDate(dateString);
		if (diary == null) {
			return "error";
		}
		return "ok";
	}
	
	@RequestMapping(value = "/personal-dairy", method = RequestMethod.GET)
	public String PersonanlD(Model model) {
		
		//test
		model.addAttribute("title", "Personal Diary");
		return "Personal-diary";
	}
	
	
	@RequestMapping(value = "/add-recording", method = RequestMethod.GET)
	public String AddR(Model model){
		
		//test
		model.addAttribute("title", "Add recording");
		
		
		diaryManager.testAddDiary();
		return "add-recording";
	}
	
	
	@RequestMapping(value = "/friend-recording", method = RequestMethod.GET)
	public String FriendR(Model model) {
		
		//test
		model.addAttribute("title", "Friend recording");
		
		return "friend-recording";
	}
}
