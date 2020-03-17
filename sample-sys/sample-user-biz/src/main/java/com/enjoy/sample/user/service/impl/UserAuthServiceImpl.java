package com.enjoy.sample.user.service.impl;

import com.enjoy.common.exception.ArgumentException;
import com.enjoy.sample.user.dao.UserInfoMapper;
import com.enjoy.sample.user.model.entity.UserInfo;
import com.enjoy.sample.user.model.entity.UserInfoExample;
import com.enjoy.sample.user.service.UserAuthService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserAuthServiceImpl implements UserAuthService {
    @Autowired
    private UserInfoMapper userInfoMapper;

    public UserInfo login(String userCode, String userPwd){
        if(StringUtils.isEmpty(userCode)){
            throw new ArgumentException("用户名不能为空！");
        }
        if(StringUtils.isEmpty(userPwd)){
            throw new ArgumentException("密码不能为空！");
        }
        UserInfoExample userInfoExample=new UserInfoExample();
        userInfoExample.createCriteria().andUserCodeEqualTo(userCode).andUserPwdEqualTo(userPwd);
        List<UserInfo> userList=userInfoMapper.selectByExample(userInfoExample);
        if(userList.size()==0){
            throw new ArgumentException("用户名密码不正确！");
        }else{
            return userList.get(0);
        }
    }
}
