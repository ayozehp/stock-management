package es.ayozehp.stock.management.action;

import com.opensymphony.xwork2.ActionSupport;
import es.ayozehp.stock.management.model.User;

import java.util.ArrayList;
import java.util.List;

public class ListUserAction extends ActionSupport{
    private ArrayList<User> users = new ArrayList<>();

    public String execute() {
        users.add(new User("1", "ayoze" ,"Ayoze", "Hernandez", "ADMIN"));
        users.add(new User("2", "test" ,"Test", "Lastname", "EMPLOYEE"));

        return SUCCESS;
    }

    public List<User> getUsers() {
        return users;
    }
}