package com.ruoyi.project.shenxiu.service;

import java.util.List;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.project.shenxiu.domain.CangpinFenlei;

/**
 * 藏品分类信息Service接口
 * 
 * @author tunma
 * @date 2025-04-05
 */
public interface ICangpinFenleiService 
{
    /**
     * 查询藏品分类信息
     * 
     * @param id 藏品分类信息主键
     * @return 藏品分类信息
     */
    public CangpinFenlei selectCangpinFenleiById(Long id);

    /**
     * 查询藏品分类信息列表
     * 
     * @param cangpinFenlei 藏品分类信息
     * @return 藏品分类信息集合
     */
    public List<CangpinFenlei> selectCangpinFenleiList(CangpinFenlei cangpinFenlei);

    /**
     * 新增藏品分类信息
     * 
     * @param cangpinFenlei 藏品分类信息
     * @return 结果
     */
    public AjaxResult insertCangpinFenlei(CangpinFenlei cangpinFenlei);

    /**
     * 修改藏品分类信息
     * 
     * @param cangpinFenlei 藏品分类信息
     * @return 结果
     */
    public AjaxResult updateCangpinFenlei(CangpinFenlei cangpinFenlei);

    /**
     * 批量删除藏品分类信息
     * 
     * @param ids 需要删除的藏品分类信息主键集合
     * @return 结果
     */
    public AjaxResult deleteCangpinFenleiByIds(Long[] ids);

    /**
     * 删除藏品分类信息信息
     * 
     * @param id 藏品分类信息主键
     * @return 结果
     */
    public AjaxResult deleteCangpinFenleiById(Long id);
}
