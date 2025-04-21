package com.ruoyi.project.system.service;

import com.ruoyi.project.system.domain.vo.SelectVo;

import java.util.List;

/**
 * 部门Service接口
 * 
 * @author tunma
 * @date 2024-09-06
 */
public interface ICommonService 
{
     List<SelectVo> selectList(String table, String key, String value);

     List<SelectVo> selectParamList(String table, String key, String value, String paramField, String paramValue);


     
}
