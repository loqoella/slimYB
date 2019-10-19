package usyd.elec5619.slimYB;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class ProgressController {

    private static final Logger logger = LoggerFactory.getLogger(ProgressController.class);

    @RequestMapping(value = "/goal", method = RequestMethod.GET)
    public String progress(Model model) {

        model.addAttribute("title", "ProgressPage");

        return "progressViews/progress";
    }

}
