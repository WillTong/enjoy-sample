package com.enjoy.sample.user.model.vo;

import java.io.Serializable;
import java.util.Date;

/**
 * 用户管理查询.
 * @author will
 */
public class UserManageListVo implements Serializable {
    private String userCode;
    private String userName;
    private Date beginLoginDate;
    private Date endLoginDate;

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

    public Date getBeginLoginDate() {
        return beginLoginDate;
    }

    public void setBeginLoginDate(Date beginLoginDate) {
        this.beginLoginDate = beginLoginDate;
    }

    public Date getEndLoginDate() {
        return endLoginDate;
    }

    public void setEndLoginDate(Date endLoginDate) {
        this.endLoginDate = endLoginDate;
    }
}
