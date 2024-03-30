package es.ayozehp.stock.management;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import java.util.Map;

public class InterceptorLogin implements Interceptor {

    private static final Logger LOG = LogManager.getLogger(InterceptorLogin.class.getName());

    @Override
    public void destroy() {

    }

    @Override
    public void init() {

    }

    @Override
    public String intercept(ActionInvocation actionInvocation) throws Exception {
        Map<String, Object> session = actionInvocation.getInvocationContext().getSession();

        if (session.get("started") == null) {
            LOG.info("Session not started");
            return Action.ERROR;
        }

        LOG.info("Session started");
        return actionInvocation.invoke();
    }
}
