package com.enjoy.sample.order.service.impl;

import com.enjoy.sample.order.dao.OrderInfoMapper;
import com.enjoy.sample.order.model.entity.OrderInfo;
import com.enjoy.sample.order.model.entity.OrderInfoExample;
import com.enjoy.sample.order.service.OrderManagerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class OrderManagerServiceImpl implements OrderManagerService {

    @Autowired
    private OrderInfoMapper orderInfoMapper;

    @Override
    public List<OrderInfo> searchOrderManagerList(Map<String,Object[]> dataScope){
        return orderInfoMapper.selectByExample(new OrderInfoExample());
    }
}
