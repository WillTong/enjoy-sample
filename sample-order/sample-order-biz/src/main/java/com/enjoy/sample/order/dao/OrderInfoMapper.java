package com.enjoy.sample.order.dao;

import com.enjoy.sample.order.model.entity.OrderInfo;
import com.enjoy.sample.order.model.entity.OrderInfoExample;
import java.util.List;

import com.github.mybatis.helper.datascope.annotation.ActiveScopeField;
import com.github.mybatis.helper.datascope.annotation.DataScopeSettings;
import org.apache.ibatis.annotations.Param;

@DataScopeSettings(activeScopeFields = {
        @ActiveScopeField(value = "COMPANY_ID"),
        @ActiveScopeField(value = "DEPARTMENT_ID"),
        @ActiveScopeField(value = "USER_ID",columnName = "CREATED_BY")})
public interface OrderInfoMapper {
    int countByExample(OrderInfoExample example);

    int deleteByExample(OrderInfoExample example);

    int deleteByPrimaryKey(Long id);

    int insert(OrderInfo record);

    int insertSelective(OrderInfo record);

    List<OrderInfo> selectByExample(OrderInfoExample example);

    OrderInfo selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") OrderInfo record, @Param("example") OrderInfoExample example);

    int updateByExample(@Param("record") OrderInfo record, @Param("example") OrderInfoExample example);

    int updateByPrimaryKeySelective(OrderInfo record);

    int updateByPrimaryKey(OrderInfo record);
}