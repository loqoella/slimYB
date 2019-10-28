package usyd.elec5619.slimYB.service;

import org.hibernate.SessionFactory;
import org.hibernate.classic.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import usyd.elec5619.slimYB.domain.ProgressRecord;
import usyd.elec5619.slimYB.domain.User;
import usyd.elec5619.slimYB.domain.UserGoal;

import java.io.Serializable;
import java.util.List;

@Service(value = "userGoalManager")
@Transactional
public class UserGoalManager implements Serializable {

    private SessionFactory sessionFactory;
    private UserGoal userGoal;

    @Autowired
    public void setSessionFactory(SessionFactory sf) {
        this.sessionFactory = sf;
    }

    public void addNewGoal(UserGoal goal) throws Exception {
        Session currentSession = this.sessionFactory.getCurrentSession();
        currentSession.saveOrUpdate(goal);
    }

    public void addGoal(UserGoal goal) {
        this.userGoal = goal;
    }
    public UserGoal getGoal(){
        return this.userGoal;
    }

    public List<UserGoal> getAllGoal() {
        Session currentSession = this.sessionFactory.getCurrentSession();
        List<UserGoal> list = currentSession.createQuery("FROM UserGoal").list();
        return list;
    }

    public List<UserGoal> searchExistingGoal(long userID) {
        Session currentSession = this.sessionFactory.getCurrentSession();
        List<UserGoal> list = currentSession.createQuery(
                "FROM UserGoal G WHERE " + "G.user_id.id = " + "'" + userID + "'").list();
        return list;
    }

}
