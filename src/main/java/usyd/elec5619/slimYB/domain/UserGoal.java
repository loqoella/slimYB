package usyd.elec5619.slimYB.domain;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "UserGoal")
public class UserGoal implements Serializable {
    @Id
    @GeneratedValue
    @Column(name = "Id")
    private long id;

    @ManyToOne
    @JoinColumn(name = "UserID")
    private User user_id;

    @Column(name = "GoalWeight")
    private String goal_weight;

    @Column(name = "GoalThighGirth")
    private String goal_thigh_girth;

    @Column(name = "GoalWaistGirth")
    private String goal_waist_girth;

    @Column(name = "GoalHipGirth")
    private String goal_hip_girth;

    @Column(name = "GoalDurationDays")
    private String goal_duration_days;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public User getUser_id() {
        return user_id;
    }

    public void setUser_id(User user_id) {
        this.user_id = user_id;
    }

    public String getGoal_weight() {
        return goal_weight;
    }

    public void setGoal_weight(String goal_weight) {
        this.goal_weight = goal_weight;
    }

    public String getGoal_thigh_girth() {
        return goal_thigh_girth;
    }

    public void setGoal_thigh_girth(String goal_thigh_girth) {
        this.goal_thigh_girth = goal_thigh_girth;
    }

    public String getGoal_waist_girth() {
        return goal_waist_girth;
    }

    public void setGoal_waist_girth(String goal_waist_girth) {
        this.goal_waist_girth = goal_waist_girth;
    }

    public String getGoal_hip_girth() {
        return goal_hip_girth;
    }

    public void setGoal_hip_girth(String goal_hip_girth) {
        this.goal_hip_girth = goal_hip_girth;
    }

    public String getGoal_duration_days() {
        return goal_duration_days;
    }

    public void setGoal_duration_days(String goal_duration_days) {
        this.goal_duration_days = goal_duration_days;
    }
}