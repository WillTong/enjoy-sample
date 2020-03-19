package com.enjoy.sample.order.model.dto;

import com.enjoy.sample.order.model.entity.OrderInfo;
import com.enjoy.sample.user.model.dto.UserInfoDto;

import java.io.Serializable;

public class OrderManagerDto implements Serializable {
    private Long id;
    private String orderTitle;
    private Long departmentId;
    private Long companyId;
    private UserInfoDto createdPerson;
    private UserInfoDto lastUpdPerson;

    public OrderManagerDto() {
    }

    public OrderManagerDto(OrderInfo orderInfo, UserInfoDto createdPerson) {
        this.id=orderInfo.getId();
        this.orderTitle=orderInfo.getOrderTitle();
        this.departmentId=orderInfo.getDepartmentId();
        this.companyId=orderInfo.getCompanyId();
        this.createdPerson=createdPerson;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getOrderTitle() {
        return orderTitle;
    }

    public void setOrderTitle(String orderTitle) {
        this.orderTitle = orderTitle;
    }

    public Long getDepartmentId() {
        return departmentId;
    }

    public void setDepartmentId(Long departmentId) {
        this.departmentId = departmentId;
    }

    public Long getCompanyId() {
        return companyId;
    }

    public void setCompanyId(Long companyId) {
        this.companyId = companyId;
    }

    public UserInfoDto getCreatedPerson() {
        return createdPerson;
    }

    public void setCreatedPerson(UserInfoDto createdPerson) {
        this.createdPerson = createdPerson;
    }

    public UserInfoDto getLastUpdPerson() {
        return lastUpdPerson;
    }

    public void setLastUpdPerson(UserInfoDto lastUpdPerson) {
        this.lastUpdPerson = lastUpdPerson;
    }
}
