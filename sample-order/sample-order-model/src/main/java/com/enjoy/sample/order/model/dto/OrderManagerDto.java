package com.enjoy.sample.order.model.dto;

import com.enjoy.sample.order.model.entity.OrderInfo;
import com.enjoy.sample.user.model.dto.UserInfoDto;

public class OrderManagerDto{
    private Long id;

    private String orderTitle;

    private Long departmentId;

    private Long companyId;


    public OrderManagerDto(OrderInfo orderInfo, UserInfoDto userInfoDto) {
        this.id=orderInfo.getId();
        this.orderTitle=orderInfo.getOrderTitle();
        this.departmentId=orderInfo.getDepartmentId();
        this.companyId=orderInfo.getCompanyId();
    }

    public UserInfoDto getCreatedPerson() {
        return createdPerson;
    }

    public void setCreatedPerson(UserInfoDto createdPerson) {
        this.createdPerson = createdPerson;
    }
}
