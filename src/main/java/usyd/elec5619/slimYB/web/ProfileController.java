package usyd.elec5619.slimYB.web;

import java.math.BigDecimal;
import java.text.DateFormat;
import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.ui.Model;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import usyd.elec5619.slimYB.domain.Profile;
import usyd.elec5619.slimYB.service.ProfileManager;
import usyd.elec5619.slimYB.service.UserManager;

@Controller
@RequestMapping("/profile")
public class ProfileController {

private static final Logger logger = LoggerFactory.getLogger(ProfileController.class);

	@Resource(name="userManager")
	private UserManager userManager;
	@Resource(name="profileManager")
	private ProfileManager profileManager;

	@RequestMapping(value = "/profile", method = RequestMethod.GET)
	public String profile(Model model,HttpServletRequest request) throws Exception {
		String email=request.getParameter("email-address");
		//String pro = "12@gmail.com";
		model.addAttribute("title", "Profile");
		model.addAttribute("profile",profileManager.getProfileByEmail(email));
		return "profile";
	}	
	
	@RequestMapping(value = "/profile/profile-change", method = RequestMethod.GET)
	public String profilechange(Model model,HttpServletRequest request,@RequestParam("Email") String Email) {
		
		model.addAttribute("title", "Profile-Change");
		
		String e = Email ;
		
		String username =request.getParameter("username");
		double height=Double.valueOf(request.getParameter("height"));
		double weight=Double.valueOf(request.getParameter("weight"));
		double bust=Double.valueOf(request.getParameter("bust"));
		double hips=Double.valueOf(request.getParameter("hips"));
		double waist=Double.valueOf(request.getParameter("waist"));
		double B = weight/(height*height);
		BigDecimal bd = new BigDecimal(B);
		double bMI  = bd.setScale(2, BigDecimal.ROUND_HALF_UP).doubleValue();
		
		Profile p = new Profile();
		p.setUsername(username);
		p.setBust(bust);
		p.setBMI(bMI);
		p.setHeight(height);
		p.setHips(hips);
		p.setWaist(waist);
		p.setWeight(weight);
		
		profileManager.changeProfile(e,p);
		
		return "profile-change";
	}
}
