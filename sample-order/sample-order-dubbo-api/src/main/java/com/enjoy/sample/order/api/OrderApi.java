package com.enjoy.sample.order.api;

import com.enjoy.common.model.Response;
import com.enjoy.sample.order.client.OrderClient;
import com.enjoy.sample.order.model.entity.OrderInfo;
import com.enjoy.sample.order.service.OrderManagerService;
import org.apache.dubbo.config.annotation.Service;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;
import java.util.Map;

@Service
public class OrderApi implements OrderClient {

    @Autowired
    private OrderManagerService orderManagerService;

    @Override
    public Response<List<OrderInfo>> searchOrderManagerList(Map<String,Object[]> dataScope){
        List<OrderInfo> orderInfoList= orderManagerService.searchOrderManagerList(dataScope);
        return Response.buildResult(orderInfoList);
    }
}
