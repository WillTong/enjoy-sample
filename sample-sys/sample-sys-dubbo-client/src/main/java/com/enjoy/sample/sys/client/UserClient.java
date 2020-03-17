package com.enjoy.sample.sys.client;

import com.enjoy.common.annotation.Param;
import com.enjoy.common.model.LoginResponse;
import com.enjoy.common.model.LogoutResponse;
import com.enjoy.common.model.Page;
import com.enjoy.common.model.Response;
import com.enjoy.sample.user.model.dto.UserManageListDto;
import com.enjoy.sample.user.model.vo.UserManageListVo;

import java.util.Map;

/**
 * 用户服务.
 * @author will
 */
public interface UserClient {
    /**
     * 登录
     * @param userCode
     * @param userPwd
     * @return
     */
    LoginResponse<String> login(@Param("userCode") String userCode,@Param("userPwd") String userPwd);

    /**
     * 登出
     * @param suId
     * @return
     */
    LogoutResponse<String> logout(@Param("suId")Long suId);

    /**
     * 用户分页查询
     * @param userManagerListVo
     * @param page
     * @return
     */
    Response<Page<UserManageListDto>> searchUserManageList(@Param("UserManageListVo") UserManageListVo userManagerListVo, @Param("page")Page page);

    /**
     * 获取用户的数据权限
     * @param suId
     * @return
     */
    Response<Map<String, Object[]>> getMyDataScope(@Param("suId")Long suId);
}
