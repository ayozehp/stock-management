package es.ayozehp.stock.management.action.product;

import com.opensymphony.xwork2.ActionSupport;
import es.ayozehp.stock.management.model.Product;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class DeleteProductAction extends ActionSupport {

    private String id;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String execute() {
        SessionFactory factory = new Configuration().configure().buildSessionFactory();
        Session session = factory.openSession();
        session.beginTransaction();
        Product product = session.get(Product.class, id);
        session.delete(product);
        session.getTransaction().commit();
        session.close();

        return SUCCESS;
    }
}