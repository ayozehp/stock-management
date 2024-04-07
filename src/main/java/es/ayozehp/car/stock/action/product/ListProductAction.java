package es.ayozehp.car.stock.action.product;

import com.opensymphony.xwork2.ActionSupport;
import es.ayozehp.car.stock.model.Product;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import java.util.ArrayList;
import java.util.List;

public class ListProductAction extends ActionSupport{
    private List<Product> products = new ArrayList<>();
    private List<Product> productsWithStockLowerThanTen = new ArrayList<>();

    public String execute() {
        SessionFactory factory = new Configuration().configure().buildSessionFactory();
        Session session = factory.openSession();
        session.beginTransaction();
        products = session.createQuery("FROM Product").list();
        productsWithStockLowerThanTen = session.createQuery("FROM Product WHERE stock < :stock")
                .setParameter("stock", 10)
                .list();
        session.getTransaction().commit();
        session.close();

        return SUCCESS;
    }

    public List<Product> getProducts() {
        return products;
    }

    public List<Product> getProductsWithStockLowerThanTen() {
        return productsWithStockLowerThanTen;
    }
}