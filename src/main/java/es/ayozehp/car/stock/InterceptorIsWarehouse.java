package es.ayozehp.car.stock;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import java.util.Map;

public class InterceptorIsWarehouse implements Interceptor {

    private static final Logger LOG = LogManager.getLogger(InterceptorIsWarehouse.class.getName());

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
            LOG.info("Not role matched: Warehouse");
            return Action.ERROR;
        }

        LOG.info("Role matched: Warehouse");
        return actionInvocation.invoke();
    }
}
