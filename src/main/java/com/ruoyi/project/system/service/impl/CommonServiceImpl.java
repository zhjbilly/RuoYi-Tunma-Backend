package com.ruoyi.project.system.service.impl;

import com.ruoyi.project.system.domain.vo.SelectVo;
import com.ruoyi.project.system.mapper.SelectMapper;
import com.ruoyi.project.system.service.ICommonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 部门Service业务层处理
 * 
 * @author tunma
 * @date 2024-09-06
 */
@Service
public class CommonServiceImpl implements ICommonService 
{
 
    @Autowired
    private SelectMapper selectMapper;
    public List<SelectVo> selectList(String table, String key, String value) {
        return selectMapper.selectList(table, key, value);
    }


    @Override
    public List<SelectVo> selectParamList(String table, String key, String value, String paramField, String paramValue) {
        return selectMapper.selectParamList(table, key, value, paramField, paramValue);
    }
}
