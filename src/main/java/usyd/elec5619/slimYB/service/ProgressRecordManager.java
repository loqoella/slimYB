package usyd.elec5619.slimYB.service;

import org.hibernate.SessionFactory;
import org.hibernate.classic.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import usyd.elec5619.slimYB.domain.ProgressRecord;
import usyd.elec5619.slimYB.domain.User;

import java.io.Serializable;
import java.util.List;

@Service(value = "progressRecordManager")
@Transactional
public class ProgressRecordManager implements Serializable {

    private SessionFactory sessionFactory;

    @Autowired
    public void setSessionFactory(SessionFactory sf) {
        this.sessionFactory = sf;
    }

    public void addNewRecord(ProgressRecord record) throws Exception {
        Session currentSession = this.sessionFactory.getCurrentSession();
        currentSession.saveOrUpdate(record);
    }

    public List<ProgressRecord> getAllRecord() {
        Session currentSession = this.sessionFactory.getCurrentSession();
        List<ProgressRecord> list = currentSession.createQuery("FROM ProgressRecord").list();
        return list;
    }


    public List<ProgressRecord> searchExistingRecord(long userID, String date) {
        Session currentSession = this.sessionFactory.getCurrentSession();
        List<ProgressRecord> list = currentSession.createQuery(
                "FROM ProgressRecord R WHERE " + "R.user_id.id = " + "'" + userID + "'" + " AND " + "R.date = " + "'" + date + "'").list();
        return list;
    }
}
