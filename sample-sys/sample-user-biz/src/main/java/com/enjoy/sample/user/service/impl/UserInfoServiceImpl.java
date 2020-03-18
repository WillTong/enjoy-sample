package com.enjoy.sample.user.service.impl;

import com.enjoy.sample.user.dao.UserInfoMapper;
import com.enjoy.sample.user.model.dto.UserInfoDto;
import com.enjoy.sample.user.model.entity.UserInfo;
import com.enjoy.sample.user.model.entity.UserInfoExample;
import com.enjoy.sample.user.service.UserInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class UserInfoServiceImpl implements UserInfoService {

    @Autowired
    private UserInfoMapper userInfoMapper;

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

