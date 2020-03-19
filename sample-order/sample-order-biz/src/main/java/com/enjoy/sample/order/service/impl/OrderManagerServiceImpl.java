package com.enjoy.sample.order.service.impl;

import com.enjoy.sample.order.dao.OrderInfoMapper;
import com.enjoy.sample.order.model.entity.OrderInfo;
import com.enjoy.sample.order.model.entity.OrderInfoExample;
import com.enjoy.sample.order.service.OrderManagerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;

/**
 * 订单管理
 * @author will
 */
@Service
public class OrderManagerServiceImpl implements OrderManagerService {

    @Autowired
    private OrderInfoMapper orderInfoMapper;

    @Override
    public List<OrderInfo> searchOrderManagerList(Map<String,Object[]> dataScope){
        return orderInfoMapper.selectByExample(new OrderInfoExample());
    }

    @Override
    @Transactional
    public void addOrder(OrderInfo orderInfo,Long suId){
        orderInfoMapper.insertSelective(orderInfo);
    }

    @Override
    @Transactional
    public void deleteOrder(Long orderId,Long suId){
        orderInfoMapper.deleteByPrimaryKey(orderId);
    }

    @Override
    @Transactional
    public void editOrder(OrderInfo orderInfo,Long suId){
        orderInfoMapper.updateByPrimaryKeySelective(orderInfo);
    }
}
