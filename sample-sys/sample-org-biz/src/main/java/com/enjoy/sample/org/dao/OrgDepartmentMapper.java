package com.enjoy.sample.org.dao;

import com.enjoy.sample.org.model.entity.OrgDepartment;
import com.enjoy.sample.org.model.entity.OrgDepartmentExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface OrgDepartmentMapper {
    int countByExample(OrgDepartmentExample example);

    int deleteByExample(OrgDepartmentExample example);

    int deleteByPrimaryKey(Long id);

    int insert(OrgDepartment record);

    int insertSelective(OrgDepartment record);

    List<OrgDepartment> selectByExample(OrgDepartmentExample example);

    OrgDepartment selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") OrgDepartment record, @Param("example") OrgDepartmentExample example);

    int updateByExample(@Param("record") OrgDepartment record, @Param("example") OrgDepartmentExample example);

    int updateByPrimaryKeySelective(OrgDepartment record);

    int updateByPrimaryKey(OrgDepartment record);
}