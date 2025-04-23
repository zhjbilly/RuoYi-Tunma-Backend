package com.ruoyi.project.shenxiu.service.impl;

import java.util.Arrays;
import java.util.List;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.common.utils.StringUtils;

import com.ruoyi.project.shenxiu.domain.Liudong;
import com.ruoyi.project.shenxiu.dto.CangpinDto;
import com.ruoyi.project.shenxiu.mapper.LiudongMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.project.shenxiu.mapper.CangpinMapper;
import com.ruoyi.project.shenxiu.domain.Cangpin;
import com.ruoyi.project.shenxiu.service.ICangpinService;

import static com.ruoyi.project.shenxiu.service.impl.LiudongServiceImpl.*;

/**
 * 藏品信息Service业务层处理
 * 
 * @author tunma
 * @date 2025-04-05
 */
@Service
public class CangpinServiceImpl implements ICangpinService 
{
    @Autowired
    private CangpinMapper cangpinMapper;

    @Autowired
    private LiudongMapper liudongmapper;

    /**
     * 查询藏品信息
     * 
     * @param id 藏品信息主键
     * @return 藏品信息
     */
    @Override
    public Cangpin selectCangpinById(Long id)
    {
        return cangpinMapper.selectCangpinById(id);
    }

    /**
     * 查询藏品及其流动信息
     * @param id
     * @return
     */
    @Override
    public CangpinDto selectCangpinDtoById(Long id) {
        Cangpin cangpin = cangpinMapper.selectCangpinById(id);
        if(null == cangpin) throw new RuntimeException("藏品不存在");
        List<Liudong> liudongs = liudongmapper.selectLiudongListByStates(cangpin.getId(), Arrays.asList(PASSED, BACK_APPROVAL, RETURNED));
        CangpinDto rlt = new CangpinDto();
        rlt.setCangpin(cangpin);
        rlt.setLiudong(liudongs);
        return rlt;
    }

    /**
     * 查询藏品信息列表
     * 
     * @param cangpin 藏品信息
     * @return 藏品信息
     */
    @Override
    public List<Cangpin> selectCangpinList(Cangpin cangpin)
    {
        return cangpinMapper.selectCangpinList(cangpin);
    }

    /**
     * 新增藏品信息
     * 
     * @param cangpin 藏品信息
     * @return 结果
     */
    @Override
    public AjaxResult insertCangpin(Cangpin cangpin)
    {
        return AjaxResult.success(cangpinMapper.insertCangpin(cangpin));
    }

    /**
     * 修改藏品信息
     * 
     * @param cangpin 藏品信息
     * @return 结果
     */
    @Override
    public AjaxResult updateCangpin(Cangpin cangpin)
    {
        return AjaxResult.success(cangpinMapper.updateCangpin(cangpin));
    }

    /**
     * 批量删除藏品信息
     * 
     * @param ids 需要删除的藏品信息主键
     * @return 结果
     */
    @Override
    public AjaxResult deleteCangpinByIds(Long[] ids)
    {
        return AjaxResult.success(cangpinMapper.deleteCangpinByIds(ids));
    }

    /**
     * 删除藏品信息信息
     * 
     * @param id 藏品信息主键
     * @return 结果
     */
    @Override
    public AjaxResult deleteCangpinById(Long id)
    {
        return AjaxResult.success(cangpinMapper.deleteCangpinById(id));
    }
    
}
