package usyd.elec5619.slimYB.domain;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


/**
 * Comment 
 */
@Entity
@Table(name="Comment")
public class Comment implements Serializable {
    @Id
	@GeneratedValue
    @Column(name="id")
    private long id;

    @Column
    private String comment;

    @ManyToOne
    @JoinColumn(name = "diary_id")
    private Diary diary;
    /**
     * @return the id
     */
    public long getId() {
        return id;
    }
    /**
     * @param id the id to set
     */
    public void setId(long id) {
        this.id = id;
    }
    /**
     * @return the comment
     */
    public String getComment() {
        return comment;
    }

    /**
     * @param comment the comment to set
     */
    public void setComment(String comment) {
        this.comment = comment;
    }
    /**
     * @return the diary
     */
    public Diary getDiary() {
        return diary;
    }
    /**
     * @param diary the diary to set
     */
    public void setDiary(Diary diary) {
        this.diary = diary;
    }
}