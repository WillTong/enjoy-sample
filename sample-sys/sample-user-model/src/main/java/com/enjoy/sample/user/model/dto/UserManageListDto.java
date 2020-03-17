package com.enjoy.sample.user.model.dto;

import java.util.Date;

/**
 * 用户管理查询.
 * @author will
 */
public class UserManageListDto extends UserInfoDto{
    private UserInfoDto createdPerson;
    private Date createdDate;
    private UserInfoDto lastUpdPerson;
    private Date lastUpdDate;

    public UserInfoDto getCreatedPerson() {
        return createdPerson;
    }

    public void setCreatedPerson(UserInfoDto createdPerson) {
        this.createdPerson = createdPerson;
    }

    public Date getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(Date createdDate) {
        this.createdDate = createdDate;
    }

    public UserInfoDto getLastUpdPerson() {
        return lastUpdPerson;
    }

    public void setLastUpdPerson(UserInfoDto lastUpdPerson) {
        this.lastUpdPerson = lastUpdPerson;
    }

    public Date getLastUpdDate() {
        return lastUpdDate;
    }

    public void setLastUpdDate(Date lastUpdDate) {
        this.lastUpdDate = lastUpdDate;
    }
}

