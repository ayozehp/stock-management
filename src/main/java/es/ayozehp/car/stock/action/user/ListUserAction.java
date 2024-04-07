package es.ayozehp.car.stock.action.user;

import com.opensymphony.xwork2.ActionSupport;
import es.ayozehp.car.stock.model.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import java.util.ArrayList;
import java.util.List;

public class ListUserAction extends ActionSupport{
    private List<User> users = new ArrayList<>();

    public String execute() {
        SessionFactory factory = new Configuration().configure().buildSessionFactory();
        Session session = factory.openSession();
        session.beginTransaction();
        users = session.createQuery("FROM es.ayozehp.stock.management.model.User").list();
        session.getTransaction().commit();
        session.close();

        return SUCCESS;
    }

    public List<User> getUsers() {
        return users;
    }
}