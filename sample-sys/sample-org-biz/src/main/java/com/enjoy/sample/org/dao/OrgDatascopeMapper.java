package com.enjoy.sample.org.dao;

import com.enjoy.sample.org.model.entity.OrgDatascope;
import com.enjoy.sample.org.model.entity.OrgDatascopeExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface OrgDatascopeMapper {
    int countByExample(OrgDatascopeExample example);

    int deleteByExample(OrgDatascopeExample example);

    int deleteByPrimaryKey(Long id);

    int insert(OrgDatascope record);

    int insertSelective(OrgDatascope record);

    List<OrgDatascope> selectByExample(OrgDatascopeExample example);

    OrgDatascope selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") OrgDatascope record, @Param("example") OrgDatascopeExample example);

    int updateByExample(@Param("record") OrgDatascope record, @Param("example") OrgDatascopeExample example);

    int updateByPrimaryKeySelective(OrgDatascope record);

    int updateByPrimaryKey(OrgDatascope record);
}