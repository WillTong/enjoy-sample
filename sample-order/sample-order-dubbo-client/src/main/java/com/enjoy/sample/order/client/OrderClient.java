package com.enjoy.sample.order.client;

import com.enjoy.common.annotation.Param;
import com.enjoy.common.model.Response;
import com.enjoy.sample.order.model.dto.OrderManagerDto;
import com.enjoy.sample.order.model.entity.OrderInfo;

import java.util.List;
import java.util.Map;

/**
 * 订单相关服务
 * @author will
 */
public interface OrderClient {
    /**
     * 订单管理查询
     * @param dataScope
     * @return
     */
    Response<List<OrderManagerDto>> searchOrderManagerList(@Param("dataScope") Map<String, Object[]> dataScope);

    /**
     * 创建订单
     * @param orderInfo
     */
    Response<String> addOrder(@Param("orderInfo")OrderInfo orderInfo, @Param("suId")Long suId);

    /**
     * 删除订单
     * @param orderId
     * @param suId
     */
    Response<String> deleteOrder(@Param("orderId") Long orderId,@Param("suId") Long suId);

    /**
     * 编辑订单
     * @param orderInfo
     * @param suId
     */
    Response<String> editOrder(@Param("orderInfo")OrderInfo orderInfo, @Param("suId")Long suId);
}
