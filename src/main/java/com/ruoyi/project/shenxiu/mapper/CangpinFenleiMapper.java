package com.ruoyi.project.shenxiu.mapper;

import java.util.List;
import com.ruoyi.project.shenxiu.domain.CangpinFenlei;
/**
 * 藏品分类信息Mapper接口
 * 
 * @author tunma
 * @date 2025-04-05
 */
public interface CangpinFenleiMapper 
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
    public int insertCangpinFenlei(CangpinFenlei cangpinFenlei);

    /**
     * 修改藏品分类信息
     * 
     * @param cangpinFenlei 藏品分类信息
     * @return 结果
     */
    public int updateCangpinFenlei(CangpinFenlei cangpinFenlei);

    /**
     * 删除藏品分类信息
     * 
     * @param id 藏品分类信息主键
     * @return 结果
     */
    public int deleteCangpinFenleiById(Long id);

    /**
     * 批量删除藏品分类信息
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteCangpinFenleiByIds(Long[] ids);


}
