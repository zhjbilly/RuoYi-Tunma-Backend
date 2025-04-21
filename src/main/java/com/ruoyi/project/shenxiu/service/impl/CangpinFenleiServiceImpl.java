package com.ruoyi.project.shenxiu.service.impl;

import java.util.List;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.common.utils.StringUtils;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.project.shenxiu.mapper.CangpinFenleiMapper;
import com.ruoyi.project.shenxiu.domain.CangpinFenlei;
import com.ruoyi.project.shenxiu.service.ICangpinFenleiService;

/**
 * 藏品分类信息Service业务层处理
 * 
 * @author tunma
 * @date 2025-04-05
 */
@Service
public class CangpinFenleiServiceImpl implements ICangpinFenleiService 
{
    @Autowired
    private CangpinFenleiMapper cangpinFenleiMapper;
    /**
     * 查询藏品分类信息
     * 
     * @param id 藏品分类信息主键
     * @return 藏品分类信息
     */
    @Override
    public CangpinFenlei selectCangpinFenleiById(Long id)
    {
        return cangpinFenleiMapper.selectCangpinFenleiById(id);
    }

    /**
     * 查询藏品分类信息列表
     * 
     * @param cangpinFenlei 藏品分类信息
     * @return 藏品分类信息
     */
    @Override
    public List<CangpinFenlei> selectCangpinFenleiList(CangpinFenlei cangpinFenlei)
    {
        return cangpinFenleiMapper.selectCangpinFenleiList(cangpinFenlei);
    }

    /**
     * 新增藏品分类信息
     * 
     * @param cangpinFenlei 藏品分类信息
     * @return 结果
     */
    @Override
    public AjaxResult insertCangpinFenlei(CangpinFenlei cangpinFenlei)
    {
        return AjaxResult.success(cangpinFenleiMapper.insertCangpinFenlei(cangpinFenlei));
    }

    /**
     * 修改藏品分类信息
     * 
     * @param cangpinFenlei 藏品分类信息
     * @return 结果
     */
    @Override
    public AjaxResult updateCangpinFenlei(CangpinFenlei cangpinFenlei)
    {
        return AjaxResult.success(cangpinFenleiMapper.updateCangpinFenlei(cangpinFenlei));
    }

    /**
     * 批量删除藏品分类信息
     * 
     * @param ids 需要删除的藏品分类信息主键
     * @return 结果
     */
    @Override
    public AjaxResult deleteCangpinFenleiByIds(Long[] ids)
    {
        return AjaxResult.success(cangpinFenleiMapper.deleteCangpinFenleiByIds(ids));
    }

    /**
     * 删除藏品分类信息信息
     * 
     * @param id 藏品分类信息主键
     * @return 结果
     */
    @Override
    public AjaxResult deleteCangpinFenleiById(Long id)
    {
        return AjaxResult.success(cangpinFenleiMapper.deleteCangpinFenleiById(id));
    }
    
}
