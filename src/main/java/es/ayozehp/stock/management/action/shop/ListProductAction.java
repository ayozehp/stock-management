package es.ayozehp.stock.management.action.shop;

import com.opensymphony.xwork2.ActionSupport;
import es.ayozehp.stock.management.model.Product;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import java.util.ArrayList;
import java.util.List;

public class ListProductAction extends ActionSupport{
    private List<Product> products = new ArrayList<>();

    public String execute() {
        SessionFactory factory = new Configuration().configure().buildSessionFactory();
        Session session = factory.openSession();
        session.beginTransaction();
        products = session.createQuery("FROM es.ayozehp.stock.management.model.Product").list();
        session.getTransaction().commit();
        session.close();

        return SUCCESS;
    }

    public List<Product> getProducts() {
        return products;
    }
}