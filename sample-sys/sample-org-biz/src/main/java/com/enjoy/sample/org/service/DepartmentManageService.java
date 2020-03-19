package com.enjoy.sample.org.service;

import com.enjoy.common.model.Page;
import com.enjoy.sample.org.model.entity.OrgDepartment;

import java.util.List;

public interface DepartmentManageService {

    Page<List<OrgDepartment>> searchDepartmentManageList(Page page);
}
