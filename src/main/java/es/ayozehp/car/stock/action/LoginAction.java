package es.ayozehp.car.stock.action;

import com.opensymphony.xwork2.ActionSupport;
import es.ayozehp.car.stock.model.User;
import org.apache.struts2.interceptor.SessionAware;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import java.util.Map;

public class LoginAction extends ActionSupport implements SessionAware {

    private String userName;
    private String password;

    private Map<String, Object> session;

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String execute() {
        SessionFactory factory = new Configuration().configure().buildSessionFactory();
        Session session = factory.openSession();
        session.beginTransaction();
        User user = (User) session.createQuery("FROM User WHERE userName = :userName AND password = :password")
                .setParameter("userName", getUserName())
                .setParameter("password", getPassword())
                .uniqueResult();
        session.getTransaction().commit();
        session.close();

        if (user == null) {
            return ERROR;
        }

        this.session.put("started", true);
        this.session.put("id", user.getId());
        this.session.put("name", user.getName());
        this.session.put("isAdmin", user.isAdmin());
        this.session.put("isWarehouse", user.isWarehouse());
        this.session.put("isClient", user.isClient());

        if (user.isAdmin()) {
            return "admin";
        } else if (user.isWarehouse()) {
            return "warehouse";
        } else {
            return SUCCESS;
        }
    }

    @Override
    public void setSession(Map<String, Object> map) {
        session = map;
    }
}