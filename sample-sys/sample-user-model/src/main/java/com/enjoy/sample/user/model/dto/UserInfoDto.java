package com.enjoy.sample.user.model.dto;

import java.io.Serializable;

public class UserInfoDto implements Serializable {
    private Long id;
    private String userCode;
    private String userName;

    public UserInfoDto() {
    }

    public UserInfoDto(Long id, String userCode, String userName) {
        this.id = id;
        this.userCode = userCode;
        this.userName = userName;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getUserCode() {
        return userCode;
    }

    public void setUserCode(String userCode) {
        this.userCode = userCode;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }
}
