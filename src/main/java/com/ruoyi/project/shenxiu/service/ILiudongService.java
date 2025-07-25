package com.ruoyi.project.shenxiu.service;

import java.util.List;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.project.shenxiu.domain.Liudong;

/**
 * 藏品流动信息Service接口
 * 
 * @author tunma
 * @date 2025-04-05
 */
public interface ILiudongService 
{
    /**
     * 查询藏品流动信息
     * 
     * @param id 藏品流动信息主键
     * @return 藏品流动信息
     */
    Liudong selectLiudongById(Long id);

    /**
     * 查询藏品流动信息列表
     * 
     * @param liudong 藏品流动信息
     * @return 藏品流动信息集合
     */
    List<Liudong> selectLiudongList(Liudong liudong);

    /**
     * 新增藏品流动信息
     * 
     * @param liudong 藏品流动信息
     * @return 结果
     */
    AjaxResult insertLiudong(Liudong liudong);

    /**
     * 修改藏品流动信息
     * 
     * @param liudong 藏品流动信息
     * @return 结果
     */
    AjaxResult updateLiudong(Liudong liudong);

    /**
     * 批量删除藏品流动信息
     * 
     * @param ids 需要删除的藏品流动信息主键集合
     * @return 结果
     */
    AjaxResult deleteLiudongByIds(Long[] ids);

    /**
     * 删除藏品流动信息信息
     * 
     * @param id 藏品流动信息主键
     * @return 结果
     */
    AjaxResult deleteLiudongById(Long id);

    /**
     * 审批藏品流动信息
     * @param id
     * @return
     */
    AjaxResult approveLiudong(Long id, boolean approve);

    /**
     * 归还藏品
     * @param id
     * @return
     */
    AjaxResult backLiudong(Long id);

    /**
     * 归还审核
     * @param id
     * @return
     */
    AjaxResult approveReturned(Long id);
}
