package com.enjoy.sample.user.service;

import com.enjoy.common.model.Page;
import com.enjoy.sample.user.model.dto.UserManageListDto;
import com.enjoy.sample.user.model.vo.UserManageListVo;

public interface UserManageService {
    Page<UserManageListDto> searchUserManageList(UserManageListVo userManageListVo, Page page);
}
