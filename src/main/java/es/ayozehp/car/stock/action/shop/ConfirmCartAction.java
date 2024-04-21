package es.ayozehp.car.stock.action.shop;

import com.opensymphony.xwork2.ActionSupport;
import es.ayozehp.car.stock.model.Order;
import es.ayozehp.car.stock.model.Product;
import org.apache.struts2.interceptor.SessionAware;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import java.util.*;

public class ConfirmCartAction extends ActionSupport implements SessionAware {
    private Map<String, Object> session;

    public String execute() {
        HashMap<String, Integer> cart = (HashMap<String, Integer>) this.session.get("cart");
        String clientId = (String) this.session.get("id");
        Order order = new Order(UUID.randomUUID().toString(), clientId, cart);

        SessionFactory factory = new Configuration().configure().buildSessionFactory();
        Session dbSession = factory.openSession();
        dbSession.beginTransaction();
        dbSession.saveOrUpdate(order);

        cart.forEach((productId, amount) -> {
            Product product = dbSession.get(Product.class, productId);
            product.reduceStock(amount);
            dbSession.saveOrUpdate(product);
        });

        dbSession.getTransaction().commit();
        dbSession.close();

        this.session.put("cart", null);

        return SUCCESS;
    }

    @Override
    public void setSession(Map<String, Object> map) {
        session = map;
    }
}