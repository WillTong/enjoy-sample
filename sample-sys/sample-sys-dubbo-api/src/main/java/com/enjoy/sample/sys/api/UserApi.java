package com.enjoy.sample.sys.api;

import com.enjoy.common.model.LoginResponse;
import com.enjoy.common.model.LogoutResponse;
import com.enjoy.common.model.Page;
import com.enjoy.common.model.Response;
import com.enjoy.sample.org.service.DataScopeService;
import com.enjoy.sample.sys.client.UserClient;
import com.enjoy.sample.user.model.dto.UserInfoDto;
import com.enjoy.sample.user.model.dto.UserManageListDto;
import com.enjoy.sample.user.model.entity.UserInfo;
import com.enjoy.sample.user.model.vo.UserManageListVo;
import com.enjoy.sample.user.service.UserInfoService;
import com.enjoy.sample.user.service.UserManageService;
import org.apache.dubbo.config.annotation.Service;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;
import java.util.Map;

/**
 * 用户服务.
 * @author will
 */
@Service
public class UserApi implements UserClient {

    @Autowired
    private DataScopeService dataScopeService;
    @Autowired
    private UserManageService userManageListService;
    @Autowired
    private UserInfoService userInfoService;

    @Override
    public LoginResponse<String> login(String userCode, String userPwd) {
        UserInfo userInfo=userInfoService.login(userCode,userPwd);
        return LoginResponse.buildResult(userInfo.getId().toString(),userInfo.getUserName());
    }

    @Override
    public LogoutResponse<String> logout(Long suId) {
        return LogoutResponse.buildResult("登出成功！");
    }

    @Override
    public Response<Page<UserManageListDto>> searchUserManageList(UserManageListVo userManageListVo, Page page){
        return Response.buildResult(userManageListService.searchUserManageList(userManageListVo,page));
    }

    @Override
    public Response<Map<String, Object[]>> getMyDataScope(Long suId){
        return Response.buildResult(dataScopeService.getMyDataScope(suId));
    }

    @Override
    public Response<List<UserInfoDto>> getUserInfoByIds(List<Long> ids){
        return Response.buildResult(userInfoService.getUserInfoByIds(ids));
    }
}
