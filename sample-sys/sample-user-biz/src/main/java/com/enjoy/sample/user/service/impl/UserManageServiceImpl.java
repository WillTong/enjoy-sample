package com.enjoy.sample.user.service.impl;

import com.enjoy.sample.user.dao.UserInfoCustomMapper;
import com.enjoy.biz.utils.PageHelper;
import com.enjoy.common.model.Page;

import com.enjoy.sample.user.model.dto.UserManageListDto;
import com.enjoy.sample.user.model.vo.UserManageListVo;
import com.enjoy.sample.user.service.UserManageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserManageServiceImpl implements UserManageService {
    @Autowired
    private UserInfoCustomMapper sysUserCustomMapper;

    public Page<UserManageListDto> searchUserManageList(UserManageListVo userManageListVo, Page page) {
        PageHelper pageHelper=PageHelper.build(page);
        //添加模糊查询
        if(userManageListVo.getUserName()!=null){
            userManageListVo.setUserName(String.join("%",userManageListVo.getUserName(),"%"));
        }
        List<UserManageListDto> userManageListDtoList=sysUserCustomMapper.selectUserManageList(userManageListVo,pageHelper.buildRowBounds());
        return pageHelper.buildNewPage(userManageListDtoList);
    }
}
