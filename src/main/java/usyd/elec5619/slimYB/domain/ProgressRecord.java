package usyd.elec5619.slimYB.domain;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "User")
public class ProgressRecord implements Serializable {
    @Id
    @GeneratedValue
    @Column(name = "Id")
    private long id;

    @Column(name = "Date")
    private String date;

    @Column(name = "Current Weight")
    private Double current_weight;

    @Column(name = "Current Thigh Girth")
    private Double current_thigh_girth;

    @Column(name = "Current Waist Girth")
    private Double current_waist_girth;

    @Column(name = "Current Hip Girth")
    private Double current_hip_girth;

    @Column(name = "Walking Steps")
    private Double current_walking_steps;

    @Column(name = "Running Distance")
    private Double current_running_distance;

    @Column(name = "Intake Protein")
    private Double current_intake_protein;

    @Column(name = "Intake Carbohydrate")
    private Double current_intake_carbohydrate;

    @Column(name = "Intake Fat")
    private Double current_intake_fat;


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

    public Double getCurrent_weight() {
        return current_weight;
    }

    public void setCurrent_weight(Double current_weight) {
        this.current_weight = current_weight;
    }

    public Double getCurrent_thigh_girth() {
        return current_thigh_girth;
    }

    public void setCurrent_thigh_girth(Double current_thigh_girth) {
        this.current_thigh_girth = current_thigh_girth;
    }

    public Double getCurrent_waist_girth() {
        return current_waist_girth;
    }

    public void setCurrent_waist_girth(Double current_waist_girth) {
        this.current_waist_girth = current_waist_girth;
    }

    public Double getCurrent_hip_girth() {
        return current_hip_girth;
    }

    public void setCurrent_hip_girth(Double current_hip_girth) {
        this.current_hip_girth = current_hip_girth;
    }

    public Double getCurrent_walking_steps() {
        return current_walking_steps;
    }

    public void setCurrent_walking_steps(Double current_walking_steps) {
        this.current_walking_steps = current_walking_steps;
    }

    public Double getCurrent_running_distance() {
        return current_running_distance;
    }

    public void setCurrent_running_distance(Double current_running_distance) {
        this.current_running_distance = current_running_distance;
    }

    public Double getCurrent_intake_protein() {
        return current_intake_protein;
    }

    public void setCurrent_intake_protein(Double current_intake_protein) {
        this.current_intake_protein = current_intake_protein;
    }

    public Double getCurrent_intake_carbohydrate() {
        return current_intake_carbohydrate;
    }

    public void setCurrent_intake_carbohydrate(Double current_intake_carbohydrate) {
        this.current_intake_carbohydrate = current_intake_carbohydrate;
    }

    public Double getCurrent_intake_fat() {
        return current_intake_fat;
    }

    public void setCurrent_intake_fat(Double current_intake_fat) {
        this.current_intake_fat = current_intake_fat;
    }
}