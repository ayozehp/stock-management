package es.ayozehp.stock.management.action;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.interceptor.SessionAware;

import java.util.Map;

public class HomeAction extends ActionSupport implements SessionAware {
    private Map<String, Object> session;

    public String execute() {
        return SUCCESS;
    }

    @Override
    public void setSession(Map<String, Object> map) {
        session = map;
    }
}