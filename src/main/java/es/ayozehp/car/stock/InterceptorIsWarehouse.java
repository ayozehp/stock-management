package es.ayozehp.car.stock;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;

import java.util.Map;

public class InterceptorIsWarehouse implements Interceptor {
    @Override
    public void destroy() {

    }

    @Override
    public void init() {

    }

    @Override
    public String intercept(ActionInvocation actionInvocation) throws Exception {
        Map<String, Object> session = actionInvocation.getInvocationContext().getSession();

        if (session.get("isWarehouse") == null || !((boolean) session.get("isWarehouse"))) {
            return Action.ERROR;
        }

        return actionInvocation.invoke();
    }
}
