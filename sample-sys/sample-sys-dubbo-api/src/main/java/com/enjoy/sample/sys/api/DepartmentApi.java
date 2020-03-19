package com.enjoy.sample.sys.api;

import com.enjoy.common.model.Page;
import com.enjoy.common.model.Response;
import com.enjoy.sample.org.model.entity.OrgDepartment;
import com.enjoy.sample.org.service.DepartmentManageService;
import com.enjoy.sample.sys.client.DepartmentClient;
import org.apache.dubbo.config.annotation.Service;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

@Service
public class DepartmentApi implements DepartmentClient {

    @Autowired
    private DepartmentManageService departmentManageService;

    @Override
    public Response<Page<List<OrgDepartment>>> searchDepartmentManageList(Page page){
        return Response.buildResult(departmentManageService.searchDepartmentManageList(page));
    }
}
