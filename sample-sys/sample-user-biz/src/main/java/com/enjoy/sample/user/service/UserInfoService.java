package com.enjoy.sample.user.service;

import com.enjoy.sample.user.model.dto.UserInfoDto;
import com.enjoy.sample.user.model.entity.UserInfo;

import java.util.List;

/**
 * 用户信息
 * @author will
 */
public interface UserInfoService {

    /**
     * 登录
     * @param userCode
     * @param userPwd
     * @return
     */
    UserInfo login(String userCode, String userPwd);

    /**
     * 批量根据id获取用户列表
     * @param ids
     * @return
     */
    List<UserInfoDto> getUserInfoByIds(List<Long> ids);
}
