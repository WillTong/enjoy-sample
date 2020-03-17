package com.enjoy.sample.user.dao;

import com.enjoy.sample.user.model.dto.UserManageListDto;
import com.enjoy.sample.user.model.vo.UserManageListVo;
import org.apache.ibatis.session.RowBounds;

import java.util.List;

public interface UserInfoCustomMapper {
    List<UserManageListDto> selectUserManageList(UserManageListVo userManageListVo, RowBounds rowBounds);
}