package com.ruoyi.project.shenxiu.mapper;

import java.util.List;
import com.ruoyi.project.shenxiu.domain.Cangpin;
/**
 * 藏品信息Mapper接口
 * 
 * @author tunma
 * @date 2025-04-05
 */
public interface CangpinMapper 
{
    /**
     * 查询藏品信息
     * 
     * @param id 藏品信息主键
     * @return 藏品信息
     */
    public Cangpin selectCangpinById(Long id);

    /**
     * 查询藏品信息列表
     * 
     * @param cangpin 藏品信息
     * @return 藏品信息集合
     */
    public List<Cangpin> selectCangpinList(Cangpin cangpin);

    /**
     * 新增藏品信息
     * 
     * @param cangpin 藏品信息
     * @return 结果
     */
    public int insertCangpin(Cangpin cangpin);

    /**
     * 修改藏品信息
     * 
     * @param cangpin 藏品信息
     * @return 结果
     */
    public int updateCangpin(Cangpin cangpin);

    /**
     * 删除藏品信息
     * 
     * @param id 藏品信息主键
     * @return 结果
     */
    public int deleteCangpinById(Long id);

    /**
     * 批量删除藏品信息
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteCangpinByIds(Long[] ids);


}
