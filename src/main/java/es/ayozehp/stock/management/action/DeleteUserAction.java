package es.ayozehp.stock.management.action;

import com.opensymphony.xwork2.ActionSupport;

public class DeleteUserAction extends ActionSupport{

    private String userId;

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String execute() {
        return SUCCESS;
    }
}