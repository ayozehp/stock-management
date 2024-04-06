package es.ayozehp.stock.management.action.user;

import com.opensymphony.xwork2.ActionSupport;
import es.ayozehp.stock.management.model.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import java.util.UUID;

public class CreateUserAction extends ActionSupport {

    private User user;

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String input() {
        return SUCCESS;
    }

    public String execute() {
        user.setId(UUID.randomUUID().toString());
        SessionFactory factory = new Configuration().configure().buildSessionFactory();
        Session session = factory.openSession();
        session.beginTransaction();
        session.saveOrUpdate(user);
        session.getTransaction().commit();
        session.close();

        return SUCCESS;
    }
}