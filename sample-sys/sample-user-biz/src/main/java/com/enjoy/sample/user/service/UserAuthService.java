package com.enjoy.sample.user.service;

import com.enjoy.sample.user.model.entity.UserInfo;

public interface UserAuthService {
    UserInfo login(String userCode, String userPwd);
}
