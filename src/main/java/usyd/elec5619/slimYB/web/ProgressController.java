package usyd.elec5619.slimYB.web;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import usyd.elec5619.slimYB.domain.ProgressRecord;
import usyd.elec5619.slimYB.service.ProgressRecordManager;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.text.DateFormat;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping("/goal")
public class ProgressController {

    private static final Logger logger = LoggerFactory.getLogger(ProgressController.class);

    @Resource(name = "progressRecordManager")
    private ProgressRecordManager progressRecordManager;

    @RequestMapping(value = "/goal", method = RequestMethod.GET)
    public String progress(Model model) {
        Date date = new Date();
        DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG);

        String formattedDate = dateFormat.format(date);

        model.addAttribute("now", formattedDate);
        model.addAttribute("title", "ProgressPage");
        List<ProgressRecord> list = progressRecordManager.getAllRecord();

        List<String> intakes = new ArrayList<String>();
        List<String> weights = new ArrayList<String>();
        List<String> dates = new ArrayList<String>();

        ProgressRecord latestRecord = list.get(list.size() - 1);
        intakes.add(latestRecord.getCurrent_intake_protein());
        intakes.add(latestRecord.getCurrent_intake_carbohydrate());
        intakes.add(latestRecord.getCurrent_intake_fat());

        for (ProgressRecord record : list) {
            weights.add(record.getCurrent_weight());
            dates.add(record.getDate().substring(0, 2));
        }
        if (weights.size() > 10) {
            weights = weights.subList(0, 10);
        }
        if (dates.size() > 10) {
            dates = dates.subList(0, 10);
        }

        model.addAttribute("progressWeights", weights);
        model.addAttribute("progressDates", dates);
        model.addAttribute("progressIntakes", intakes);

        return "progressViews/progress";
    }

    @RequestMapping(value = "/addRecord", method = RequestMethod.POST)
    public String addRecord(Model model, HttpServletRequest request) {
        Date date = new Date();
        DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG);

        String formattedDate = dateFormat.format(date);


        DateFormat df = new SimpleDateFormat("dd-MMM-yyyy");
        String current_date = df.format(date);

        String current_weight = request.getParameter("current_weight");

        String current_thigh_girth = request.getParameter("current_thigh_girth");

        String current_waist_girth = request.getParameter("current_waist_girth");

        String current_hip_girth = request.getParameter("current_hip_girth");

        String current_walking_steps = request.getParameter("current_walking_steps");

        String current_running_distance = request.getParameter("current_running_distance");

        String current_intake_protein = request.getParameter("current_intake_protein");

        String current_intake_carbohydrate = request.getParameter("current_intake_carbohydrate");

        String current_intake_fat = request.getParameter("current_intake_fat");

        ProgressRecord progressRecord = new ProgressRecord();

        progressRecord.setDate(current_date);
        progressRecord.setCurrent_weight(current_weight);
        progressRecord.setCurrent_thigh_girth(current_thigh_girth);
        progressRecord.setCurrent_waist_girth(current_waist_girth);
        progressRecord.setCurrent_hip_girth(current_hip_girth);
        progressRecord.setCurrent_walking_steps(current_walking_steps);
        progressRecord.setCurrent_running_distance(current_running_distance);
        progressRecord.setCurrent_intake_protein(current_intake_protein);
        progressRecord.setCurrent_intake_carbohydrate(current_intake_carbohydrate);
        progressRecord.setCurrent_intake_fat(current_intake_fat);

        try {
            progressRecordManager.addNewRecord(progressRecord);
        } catch (Exception e) {
            e.printStackTrace();
        }

        model.addAttribute("now", formattedDate);
        model.addAttribute("title", "ProgressPage");
        System.out.println("added!=====================");
        return "progressViews/progress";
    }


}
