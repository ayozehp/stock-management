package es.ayozehp.car.stock.action.user;

import com.opensymphony.xwork2.ActionSupport;
import es.ayozehp.car.stock.model.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class EditUserAction extends ActionSupport {

    private String userId;

    private User user;

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String input() {
        SessionFactory factory = new Configuration().configure().buildSessionFactory();
        Session session = factory.openSession();
        session.beginTransaction();
        user = session.get(User.class, userId);
        session.getTransaction().commit();
        session.close();

        return SUCCESS;
    }

    public String execute() {
        SessionFactory factory = new Configuration().configure().buildSessionFactory();
        Session session = factory.openSession();
        session.beginTransaction();

        User databaseUser = session.get(User.class, user.getId());
        databaseUser.setUserName(user.getUserName());
        databaseUser.setName(user.getName());
        databaseUser.setLastName(user.getLastName());
        databaseUser.setAdmin(user.isAdmin());
        databaseUser.setWarehouse(user.isWarehouse());
        databaseUser.setClient(user.isClient());
        session.saveOrUpdate(databaseUser);

        session.getTransaction().commit();
        session.close();

        return SUCCESS;
    }
}