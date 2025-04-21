package com.ruoyi.project.shenxiu.service.impl;

import java.util.List;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.common.utils.DateUtils;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.project.shenxiu.mapper.LiudongMapper;
import com.ruoyi.project.shenxiu.domain.Liudong;
import com.ruoyi.project.shenxiu.service.ILiudongService;

/**
 * 藏品流动信息Service业务层处理
 * 
 * @author tunma
 * @date 2025-04-05
 */
@Service
public class LiudongServiceImpl implements ILiudongService 
{
    @Autowired
    private LiudongMapper liudongMapper;
    /**
     * 查询藏品流动信息
     * 
     * @param id 藏品流动信息主键
     * @return 藏品流动信息
     */
    @Override
    public Liudong selectLiudongById(Long id)
    {
        return liudongMapper.selectLiudongById(id);
    }

    /**
     * 查询藏品流动信息列表
     * 
     * @param liudong 藏品流动信息
     * @return 藏品流动信息
     */
    @Override
    public List<Liudong> selectLiudongList(Liudong liudong)
    {
        return liudongMapper.selectLiudongList(liudong);
    }

    /**
     * 新增藏品流动信息
     * 
     * @param liudong 藏品流动信息
     * @return 结果
     */
    @Override
    public AjaxResult insertLiudong(Liudong liudong)
    {
        liudong.setCreateTime(DateUtils.getNowDate());
        return AjaxResult.success(liudongMapper.insertLiudong(liudong));
    }

    /**
     * 修改藏品流动信息
     * 
     * @param liudong 藏品流动信息
     * @return 结果
     */
    @Override
    public AjaxResult updateLiudong(Liudong liudong)
    {
        return AjaxResult.success(liudongMapper.updateLiudong(liudong));
    }

    /**
     * 批量删除藏品流动信息
     * 
     * @param ids 需要删除的藏品流动信息主键
     * @return 结果
     */
    @Override
    public AjaxResult deleteLiudongByIds(Long[] ids)
    {
        return AjaxResult.success(liudongMapper.deleteLiudongByIds(ids));
    }

    /**
     * 删除藏品流动信息信息
     * 
     * @param id 藏品流动信息主键
     * @return 结果
     */
    @Override
    public AjaxResult deleteLiudongById(Long id)
    {
        return AjaxResult.success(liudongMapper.deleteLiudongById(id));
    }
    
}
