package com.ruoyi.project.shenxiu.service.impl;

import java.util.List;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.common.utils.StringUtils;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.project.shenxiu.mapper.CangchuMapper;
import com.ruoyi.project.shenxiu.domain.Cangchu;
import com.ruoyi.project.shenxiu.service.ICangchuService;

/**
 * 仓储信息Service业务层处理
 * 
 * @author tunma
 * @date 2025-04-05
 */
@Service
public class CangchuServiceImpl implements ICangchuService 
{
    @Autowired
    private CangchuMapper cangchuMapper;
    /**
     * 查询仓储信息
     * 
     * @param id 仓储信息主键
     * @return 仓储信息
     */
    @Override
    public Cangchu selectCangchuById(Long id)
    {
        return cangchuMapper.selectCangchuById(id);
    }

    /**
     * 查询仓储信息列表
     * 
     * @param cangchu 仓储信息
     * @return 仓储信息
     */
    @Override
    public List<Cangchu> selectCangchuList(Cangchu cangchu)
    {
        return cangchuMapper.selectCangchuList(cangchu);
    }

    /**
     * 新增仓储信息
     * 
     * @param cangchu 仓储信息
     * @return 结果
     */
    @Override
    public AjaxResult insertCangchu(Cangchu cangchu)
    {
        return AjaxResult.success(cangchuMapper.insertCangchu(cangchu));
    }

    /**
     * 修改仓储信息
     * 
     * @param cangchu 仓储信息
     * @return 结果
     */
    @Override
    public AjaxResult updateCangchu(Cangchu cangchu)
    {
        return AjaxResult.success(cangchuMapper.updateCangchu(cangchu));
    }

    /**
     * 批量删除仓储信息
     * 
     * @param ids 需要删除的仓储信息主键
     * @return 结果
     */
    @Override
    public AjaxResult deleteCangchuByIds(Long[] ids)
    {
        return AjaxResult.success(cangchuMapper.deleteCangchuByIds(ids));
    }

    /**
     * 删除仓储信息信息
     * 
     * @param id 仓储信息主键
     * @return 结果
     */
    @Override
    public AjaxResult deleteCangchuById(Long id)
    {
        return AjaxResult.success(cangchuMapper.deleteCangchuById(id));
    }
    
}
