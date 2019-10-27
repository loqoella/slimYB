package usyd.elec5619.slimYB.domain;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "ProgressRecord")
public class ProgressRecord implements Serializable {
    @Id
    @GeneratedValue
    @Column(name = "Id")
    private long id;

    @Column(name = "Date")
    private String date;

    @Column(name = "Weight")
    private String current_weight;

    @Column(name = "ThighGirth")
    private String current_thigh_girth;

    @Column(name = "WaistGirth")
    private String current_waist_girth;

    @Column(name = "HipGirth")
    private String current_hip_girth;

    @Column(name = "WalkingSteps")
    private String current_walking_steps;

    @Column(name = "RunningDistance")
    private String current_running_distance;

    @Column(name = "IntakeProtein")
    private String current_intake_protein;

    @Column(name = "IntakeCarbohydrate")
    private String current_intake_carbohydrate;

    @Column(name = "IntakeFat")
    private String current_intake_fat;


    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getCurrent_weight() {
        return current_weight;
    }

    public void setCurrent_weight(String current_weight) {
        this.current_weight = current_weight;
    }

    public String getCurrent_thigh_girth() {
        return current_thigh_girth;
    }

    public void setCurrent_thigh_girth(String current_thigh_girth) {
        this.current_thigh_girth = current_thigh_girth;
    }

    public String getCurrent_waist_girth() {
        return current_waist_girth;
    }

    public void setCurrent_waist_girth(String current_waist_girth) {
        this.current_waist_girth = current_waist_girth;
    }

    public String getCurrent_hip_girth() {
        return current_hip_girth;
    }

    public void setCurrent_hip_girth(String current_hip_girth) {
        this.current_hip_girth = current_hip_girth;
    }

    public String getCurrent_walking_steps() {
        return current_walking_steps;
    }

    public void setCurrent_walking_steps(String current_walking_steps) {
        this.current_walking_steps = current_walking_steps;
    }

    public String getCurrent_running_distance() {
        return current_running_distance;
    }

    public void setCurrent_running_distance(String current_running_distance) {
        this.current_running_distance = current_running_distance;
    }

    public String getCurrent_intake_protein() {
        return current_intake_protein;
    }

    public void setCurrent_intake_protein(String current_intake_protein) {
        this.current_intake_protein = current_intake_protein;
    }

    public String getCurrent_intake_carbohydrate() {
        return current_intake_carbohydrate;
    }

    public void setCurrent_intake_carbohydrate(String current_intake_carbohydrate) {
        this.current_intake_carbohydrate = current_intake_carbohydrate;
    }

    public String getCurrent_intake_fat() {
        return current_intake_fat;
    }

    public void setCurrent_intake_fat(String current_intake_fat) {
        this.current_intake_fat = current_intake_fat;
    }

    @Override
    public String toString() {
        return super.toString();
    }
}