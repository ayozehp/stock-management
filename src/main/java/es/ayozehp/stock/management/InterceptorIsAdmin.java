package es.ayozehp.stock.management;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import java.util.Map;

public class InterceptorIsAdmin implements Interceptor {

    private static final Logger LOG = LogManager.getLogger(InterceptorIsAdmin.class.getName());

    @Override
    public void destroy() {

    }

    @Override
    public void init() {

    }

    @Override
    public String intercept(ActionInvocation actionInvocation) throws Exception {
        Map<String, Object> session = actionInvocation.getInvocationContext().getSession();

        if (session.get("isAdmin") == null || !((boolean) session.get("isAdmin"))) {
            LOG.info("Not role matched: Admin");
            return Action.ERROR;
        }

        LOG.info("Role matched: Admin");
        return actionInvocation.invoke();
    }
}
