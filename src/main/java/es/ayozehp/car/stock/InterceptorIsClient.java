package es.ayozehp.car.stock;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import java.util.Map;

public class InterceptorIsClient implements Interceptor {

    private static final Logger LOG = LogManager.getLogger(InterceptorIsClient.class.getName());

    @Override
    public void destroy() {

    }

    @Override
    public void init() {

    }

    @Override
    public String intercept(ActionInvocation actionInvocation) throws Exception {
        Map<String, Object> session = actionInvocation.getInvocationContext().getSession();

        if (session.get("isClient") == null || !((boolean) session.get("isClient"))) {
            LOG.info("Not role matched: Client");
            return Action.ERROR;
        }

        LOG.info("Role matched: Client");
        return actionInvocation.invoke();
    }
}
