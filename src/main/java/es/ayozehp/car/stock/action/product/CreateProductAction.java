package es.ayozehp.car.stock.action.product;

import com.opensymphony.xwork2.ActionSupport;
import es.ayozehp.car.stock.model.Product;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import java.util.UUID;

public class CreateProductAction extends ActionSupport {

    private Product product;

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public String input() {
        return SUCCESS;
    }

    public String execute() {
        product.setId(UUID.randomUUID().toString());
        SessionFactory factory = new Configuration().configure().buildSessionFactory();
        Session session = factory.openSession();
        session.beginTransaction();
        session.saveOrUpdate(product);
        session.getTransaction().commit();
        session.close();

        return SUCCESS;
    }
}