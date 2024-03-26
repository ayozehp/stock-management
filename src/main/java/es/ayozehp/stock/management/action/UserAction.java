package es.ayozehp.stock.management.action;

import es.ayozehp.stock.management.model.User;

import com.opensymphony.xwork2.ActionSupport;
public class UserAction extends ActionSupport{
    private User user;

    public String execute() {
        user = new User() ;

        return SUCCESS;
    }

    public User getUser() {
        return user;
    }
}