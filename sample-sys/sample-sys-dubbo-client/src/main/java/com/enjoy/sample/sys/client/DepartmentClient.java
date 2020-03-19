package com.enjoy.sample.sys.client;

import com.enjoy.common.annotation.Param;
import com.enjoy.common.model.Page;
import com.enjoy.common.model.Response;
import com.enjoy.sample.org.model.entity.OrgDepartment;

import java.util.List;

public interface DepartmentClient {
    Response<Page<List<OrgDepartment>>> searchDepartmentManageList(@Param("page") Page page);
}
