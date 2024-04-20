package es.ayozehp.car.stock.action.shop;

import com.opensymphony.xwork2.ActionSupport;
import es.ayozehp.car.stock.model.Product;
import org.apache.struts2.interceptor.SessionAware;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class AddProductToCartAction extends ActionSupport implements SessionAware {

    private String productId;
    private Map<String, Object> session;

    public void setProductId(String productId) {
        this.productId = productId;
    }

    public String execute() {
        Map<String, Integer> cart = new HashMap<>();
        if (this.session.containsKey("cart")) {
            cart = (Map<String, Integer>) this.session.get("cart");
        }

        if (cart.containsKey(productId)) {
            cart.put(productId, cart.get(productId) + 1);
        } else {
            cart.put(productId, 1);
        }

        this.session.put("cart", cart);

        return SUCCESS;
    }

    @Override
    public void setSession(Map<String, Object> map) {
        session = map;
    }
}