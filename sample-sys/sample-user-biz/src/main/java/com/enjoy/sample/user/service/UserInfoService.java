package com.enjoy.sample.user.service;

import com.enjoy.sample.user.model.dto.UserInfoDto;

import java.util.List;

/**
 * 用户信息
 * @author will
 */
public interface UserInfoService {

    /**
     * 批量根据id获取用户列表
     * @param ids
     * @return
     */
    List<UserInfoDto> getUserInfoByIds(List<Long> ids);
}
