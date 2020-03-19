package com.enjoy.sample.order.service;

import com.enjoy.sample.order.model.entity.OrderInfo;
import org.springframework.transaction.annotation.Transactional;

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

    /**
     * 删除订单
     * @param orderId
     * @param suId
     */
    @Transactional
    void deleteOrder(Long orderId, Long suId);

    /**
     * 编辑订单
     * @param orderInfo
     * @param suId
     */
    @Transactional
    void editOrder(OrderInfo orderInfo, Long suId);
}
