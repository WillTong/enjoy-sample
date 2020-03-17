package com.enjoy.sample.org.service.impl;

import com.enjoy.sample.org.dao.OrgDatascopeMapper;
import com.enjoy.sample.org.model.entity.OrgDatascope;
import com.enjoy.sample.org.model.entity.OrgCompanyExample;
import com.enjoy.sample.org.model.entity.OrgDatascopeExample;
import com.enjoy.sample.org.service.DataScopeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;

@Service
public class DataScopeServiceImpl implements DataScopeService {
    @Autowired
    private OrgDatascopeMapper orgDatascopeMapper;

    @Override
    public Map<String, Object[]> getMyDataScope(Long suId){
        Map<String, Object[]> dataScopeMap=new HashMap<>();
        Set<Long> departmentScope=new HashSet<>();
        Set<Long> companyScope=new HashSet<>();
        OrgDatascopeExample orgDatascopeExample=new OrgDatascopeExample();
        orgDatascopeExample.createCriteria().andUserIdEqualTo(suId);
        List<OrgDatascope> orgDatascopeList=orgDatascopeMapper.selectByExample(orgDatascopeExample);
        for(OrgDatascope orgDatascope:orgDatascopeList){
            if(orgDatascope.getDepartmentId()!=null){
                departmentScope.add(orgDatascope.getDepartmentId());
            }else if(orgDatascope.getCompanyId()!=null){
                companyScope.add(orgDatascope.getCompanyId());
            }
        }
        if(departmentScope.size()>0){
            dataScopeMap.put("DEPARTMENT_ID",departmentScope.toArray());
        }
        if(companyScope.size()>0){
            dataScopeMap.put("COMPANY_ID",companyScope.toArray());
        }
        return dataScopeMap;
    }
}
