package es.ayozehp.car.stock.action.shop;

import com.opensymphony.xwork2.ActionSupport;
import es.ayozehp.car.stock.model.Product;
import org.apache.struts2.interceptor.SessionAware;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import java.util.HashMap;
import java.util.Map;

public class ViewCartAction extends ActionSupport implements SessionAware {
    private Map<Product, Integer> products = new HashMap<>();
    private Map<String, Object> session;

    public String execute() {
        if (this.session.containsKey("cart")) {
            HashMap<String, Integer> cart = (HashMap<String, Integer>) this.session.get("cart");

            cart.forEach((productId, amount) -> {
                SessionFactory factory = new Configuration().configure().buildSessionFactory();
                Session session = factory.openSession();
                session.beginTransaction();
                Product product = session.get(Product.class, productId);
                session.getTransaction().commit();
                session.close();

                products.put(product, amount);
            });
        }

        return SUCCESS;
    }

    public Map<Product, Integer> getProducts() {
        return products;
    }

    @Override
    public void setSession(Map<String, Object> map) {
        session = map;
    }
}