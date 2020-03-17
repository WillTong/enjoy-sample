package com.enjoy.sample.org.dao;

import com.enjoy.sample.org.model.entity.OrgCompany;
import org.apache.ibatis.annotations.Param;
import com.enjoy.sample.org.model.entity.OrgCompanyExample;
import java.util.List;

public interface OrgCompanyMapper {
    int countByExample(OrgCompanyExample example);

    int deleteByExample(OrgCompanyExample example);

    int deleteByPrimaryKey(Long id);

    int insert(OrgCompany record);

    int insertSelective(OrgCompany record);

    List<OrgCompany> selectByExample(OrgCompanyExample example);

    OrgCompany selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") OrgCompany record, @Param("example") OrgCompanyExample example);

    int updateByExample(@Param("record") OrgCompany record, @Param("example") OrgCompanyExample example);

    int updateByPrimaryKeySelective(OrgCompany record);

    int updateByPrimaryKey(OrgCompany record);
}