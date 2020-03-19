package com.enjoy.sample.org.service.impl;

import com.enjoy.biz.utils.PageHelper;
import com.enjoy.common.model.Page;
import com.enjoy.sample.org.dao.OrgDepartmentMapper;
import com.enjoy.sample.org.model.entity.OrgDepartment;
import com.enjoy.sample.org.model.entity.OrgDepartmentExample;
import com.enjoy.sample.org.service.DepartmentManageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DepartmentManageServiceImpl implements DepartmentManageService {

    @Autowired
    private OrgDepartmentMapper orgDepartmentMapper;

    @Override
    public Page<List<OrgDepartment>> searchDepartmentManageList(Page page){
        PageHelper pageHelper=PageHelper.build(page);
        List<OrgDepartment> orgDepartmentList=orgDepartmentMapper.selectByExample(new OrgDepartmentExample(),pageHelper.buildRowBounds());
        return pageHelper.buildNewPage(orgDepartmentList);
    }
}
