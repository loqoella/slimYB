package usyd.elec5619.slimYB.web;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import usyd.elec5619.slimYB.domain.ProgressRecord;
import usyd.elec5619.slimYB.domain.User;
import usyd.elec5619.slimYB.domain.UserGoal;
import usyd.elec5619.slimYB.service.ProgressRecordManager;
import usyd.elec5619.slimYB.service.UserGoalManager;
import usyd.elec5619.slimYB.service.UserManager;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping("/goal")
@Transactional
public class ProgressController {

    private static final Logger logger = LoggerFactory.getLogger(ProgressController.class);

    @Resource(name = "progressRecordManager")
    private ProgressRecordManager progressRecordManager;

    @Resource(name = "userManager")
    private UserManager userManager;

    @Resource(name = "userGoalManager")
    private UserGoalManager userGoalManager;

    @RequestMapping(value = "/goal", method = RequestMethod.GET)
    public String progress(Model model) {
        Date date = new Date();
        DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG);

        String formattedDate = dateFormat.format(date);

        model.addAttribute("now", formattedDate);
        model.addAttribute("title", "ProgressPage");

        List<UserGoal> goalList = userGoalManager.getAllGoal();

        if (goalList.size() != 0) {
            UserGoal userGoal = goalList.get(0);
            String goalDurationDays = userGoal.getGoal_duration_days();
            String goalWeight = userGoal.getGoal_weight();
            String goalWaist = userGoal.getGoal_waist_girth();
            String goalThigh = userGoal.getGoal_thigh_girth();
            String goalHip = userGoal.getGoal_hip_girth();
            model.addAttribute("goalWeight", goalWeight);
            model.addAttribute("goalWaist", goalWaist);
            model.addAttribute("goalThigh", goalThigh);
            model.addAttribute("goalHip", goalHip);
            model.addAttribute("goalDurationDays", goalDurationDays);

        }

        List<ProgressRecord> recordList = progressRecordManager.getAllRecord();

        if (recordList.size() > 0) {


            List<String> intakes = new ArrayList<String>();
            List<String> weights = new ArrayList<String>();
            List<String> dates = new ArrayList<String>();

            ProgressRecord latestRecord = recordList.get(recordList.size() - 1);
            intakes.add(latestRecord.getCurrent_intake_protein());
            intakes.add(latestRecord.getCurrent_intake_carbohydrate());
            intakes.add(latestRecord.getCurrent_intake_fat());

            String currentWeight = latestRecord.getCurrent_weight();
            String currentSteps = latestRecord.getCurrent_walking_steps();
            String currentWaist = latestRecord.getCurrent_waist_girth();
            String currentThigh = latestRecord.getCurrent_thigh_girth();
            String currentHip = latestRecord.getCurrent_hip_girth();


            for (ProgressRecord record : recordList) {
                weights.add(record.getCurrent_weight());
                dates.add(record.getDate().substring(0, 2));
            }
            if (weights.size() > 10) {
                weights = weights.subList(weights.size() - 10, weights.size());
            }
            if (dates.size() > 10) {
                dates = dates.subList(weights.size() - 10, weights.size());
            }
            model.addAttribute("exist", true);
            model.addAttribute("progressWeights", weights);
            model.addAttribute("progressDates", dates);
            model.addAttribute("progressIntakes", intakes);
            model.addAttribute("numberOfRecords", recordList.size());
            model.addAttribute("currentWeight", currentWeight);
            model.addAttribute("currentSteps", currentSteps);
            model.addAttribute("currentThigh", currentThigh);
            model.addAttribute("currentHip", currentHip);
            model.addAttribute("currentWaist", currentWaist);
        }
        model.addAttribute("exist", false);
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


        long id = 1024;
        User currentUser = userManager.getUserById(id);
        List<ProgressRecord> list = progressRecordManager.searchExistingRecord(id, current_date);
        if (list != null && list.size() > 0) {
            ProgressRecord existingRecord = progressRecordManager.searchExistingRecord(id, current_date).get(0);
            existingRecord.setCurrent_weight(current_weight);
            existingRecord.setCurrent_thigh_girth(current_thigh_girth);
            existingRecord.setCurrent_waist_girth(current_waist_girth);
            existingRecord.setCurrent_hip_girth(current_hip_girth);
            existingRecord.setCurrent_walking_steps(current_walking_steps);
            existingRecord.setCurrent_running_distance(current_running_distance);
            existingRecord.setCurrent_intake_protein(current_intake_protein);
            existingRecord.setCurrent_intake_carbohydrate(current_intake_carbohydrate);
            existingRecord.setCurrent_intake_fat(current_intake_fat);
            try {
                progressRecordManager.addNewRecord(existingRecord);
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else {
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
            progressRecord.setUser_id(currentUser);
            try {
                progressRecordManager.addNewRecord(progressRecord);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }


        model.addAttribute("now", formattedDate);
        model.addAttribute("title", "ProgressPage");
        System.out.println("added!=====================");
        return "redirect:/goal";
    }
    @RequestMapping(value = "/deleteRecord", method = RequestMethod.POST)
    public String deleteRecord(){
        try {
            progressRecordManager.deleteRecord();
            System.out.println("delete=======================");

        } catch (Exception e) {
            e.printStackTrace();
        }
        return "redirect:/goal";
    }

    @RequestMapping(value = "/setGoal", method = RequestMethod.POST)
    public String setGoal(Model model, HttpServletRequest request) {
        String goal_weight = request.getParameter("goal_weight");

        String goal_thigh_girth = request.getParameter("goal_thigh_girth");

        String goal_waist_girth = request.getParameter("goal_waist_girth");

        String goal_hip_girth = request.getParameter("goal_hip_girth");

        String goal_duration = request.getParameter("goal_days");

        long id = 1024;
        User currentUser = userManager.getUserById(id);
        List<UserGoal> list = userGoalManager.searchExistingGoal(id);
        if (list != null && list.size() > 0) {
            UserGoal existingGoal = userGoalManager.searchExistingGoal(id).get(0);
            existingGoal.setGoal_weight(goal_weight);
            existingGoal.setGoal_thigh_girth(goal_thigh_girth);
            existingGoal.setGoal_waist_girth(goal_waist_girth);
            existingGoal.setGoal_hip_girth(goal_hip_girth);
            existingGoal.setGoal_duration_days(goal_duration);
            try {
                userGoalManager.addNewGoal(existingGoal);
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else {
            UserGoal userGoal = new UserGoal();
            userGoal.setGoal_weight(goal_weight);
            userGoal.setGoal_thigh_girth(goal_thigh_girth);
            userGoal.setGoal_waist_girth(goal_waist_girth);
            userGoal.setGoal_hip_girth(goal_hip_girth);
            userGoal.setGoal_duration_days(goal_duration);
            try {
                userGoalManager.addNewGoal(userGoal);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return "redirect:/goal";
    }

}
