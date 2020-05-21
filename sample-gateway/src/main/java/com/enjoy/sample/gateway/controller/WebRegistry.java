package com.enjoy.sample.gateway.controller;

import com.enjoy.common.utils.MethodUtil;
import com.enjoy.sample.sys.client.UserClient;
import com.enjoy.web.executor.Executor;
import com.enjoy.web.executor.ParameterAction;
import com.enjoy.web.executor.ParameterHandler;
import com.enjoy.web.utils.RequestVars;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.Map;

/**
 * web注册.
 *
 * @author will
 */
@Component
public class WebRegistry implements InitializingBean {

    @Autowired
    private UserClient userClient;

    /**
     * 数据范围权限相关
     *
     */
    @Override
    public void afterPropertiesSet() {
        ParameterHandler.register("dataScope", (ParameterAction<Map<String, Object[]>>) (params, request) -> {
            Map<String, Object[]> dataScope = MethodUtil.convertResponse(userClient.getMyDataScope(Long.valueOf(RequestVars.getSessionUserId(request))));
            return dataScope;
        });
    }
}
