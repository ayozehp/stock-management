package es.ayozehp.car.stock.action.product;

import com.opensymphony.xwork2.ActionSupport;
import es.ayozehp.car.stock.model.Product;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class EditProductAction extends ActionSupport {

    private String productId;

    private Product product;

    public String getProductId() {
        return productId;
    }

    public void setProductId(String productId) {
        this.productId = productId;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public String input() {
        SessionFactory factory = new Configuration().configure().buildSessionFactory();
        Session session = factory.openSession();
        session.beginTransaction();
        product = session.get(Product.class, productId);
        session.getTransaction().commit();
        session.close();

        return SUCCESS;
    }

    public String execute() {
        SessionFactory factory = new Configuration().configure().buildSessionFactory();
        Session session = factory.openSession();
        session.beginTransaction();

        Product databaseProduct = session.get(Product.class, product.getId());
        databaseProduct.setName(product.getName());
        databaseProduct.setDescription(product.getDescription());
        databaseProduct.setStock(product.getStock());
        session.saveOrUpdate(databaseProduct);

        session.getTransaction().commit();
        session.close();

        return SUCCESS;
    }
}