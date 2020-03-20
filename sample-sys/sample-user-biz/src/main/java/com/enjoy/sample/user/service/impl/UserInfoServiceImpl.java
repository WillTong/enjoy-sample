package com.enjoy.sample.user.service.impl;

import com.enjoy.common.exception.ArgumentException;
import com.enjoy.sample.user.dao.UserInfoMapper;
import com.enjoy.sample.user.model.dto.UserInfoDto;
import com.enjoy.sample.user.model.entity.UserInfo;
import com.enjoy.sample.user.model.entity.UserInfoExample;
import com.enjoy.sample.user.service.UserInfoService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class UserInfoServiceImpl implements UserInfoService {

    @Autowired
    private UserInfoMapper userInfoMapper;

    @Override
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

    @Override
    public List<UserInfoDto> getUserInfoByIds(List<Long> ids) {
        UserInfoExample userInfoExample=new UserInfoExample();
        userInfoExample.createCriteria().andIdIn(ids);
        List<UserInfo> userInfoList=userInfoMapper.selectByExample(userInfoExample);
        List<UserInfoDto> userInfoDtoList=new ArrayList<>();
        for(UserInfo userInfo:userInfoList){
            userInfoDtoList.add(new UserInfoDto(userInfo));
        }
        return userInfoDtoList;
    }
}

