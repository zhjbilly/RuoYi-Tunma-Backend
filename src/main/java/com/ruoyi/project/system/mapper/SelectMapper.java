package com.ruoyi.project.system.mapper;

import com.ruoyi.project.system.domain.vo.SelectVo;

import java.util.List;

/**
 * 部门Mapper接口
 * 
 * @author tunma
 * @date 2024-09-06
 */
public interface SelectMapper 
{
   
    public List<SelectVo> selectList(String table,String key,String value);

    public List<SelectVo> selectParamList(String table,String key,String value, String paramField, String paramValue);
   
}
