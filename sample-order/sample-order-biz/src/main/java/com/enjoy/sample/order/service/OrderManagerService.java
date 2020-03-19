package com.enjoy.sample.order.service;

import com.enjoy.sample.order.model.entity.OrderInfo;

import java.util.List;
import java.util.Map;

/**
 * 订单管理
 * @author will
 */
public interface OrderManagerService {

    /**
     * 订单管理查询
     * @param dataScope
     * @return
     */
    List<OrderInfo> searchOrderManagerList(Map<String, Object[]> dataScope);

    /**
     * 创建订单
     * @param orderInfo
     */
    void addOrder(OrderInfo orderInfo,Long suId);
}
