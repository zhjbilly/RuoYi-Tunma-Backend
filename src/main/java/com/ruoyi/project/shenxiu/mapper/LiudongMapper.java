package com.ruoyi.project.shenxiu.mapper;

import java.util.List;
import com.ruoyi.project.shenxiu.domain.Liudong;
/**
 * 藏品流动信息Mapper接口
 * 
 * @author tunma
 * @date 2025-04-05
 */
public interface LiudongMapper 
{
    /**
     * 查询藏品流动信息
     * 
     * @param id 藏品流动信息主键
     * @return 藏品流动信息
     */
    public Liudong selectLiudongById(Long id);

    /**
     * 查询藏品流动信息列表
     * 
     * @param liudong 藏品流动信息
     * @return 藏品流动信息集合
     */
    public List<Liudong> selectLiudongList(Liudong liudong);

    /**
     * 新增藏品流动信息
     * 
     * @param liudong 藏品流动信息
     * @return 结果
     */
    public int insertLiudong(Liudong liudong);

    /**
     * 修改藏品流动信息
     * 
     * @param liudong 藏品流动信息
     * @return 结果
     */
    public int updateLiudong(Liudong liudong);

    /**
     * 删除藏品流动信息
     * 
     * @param id 藏品流动信息主键
     * @return 结果
     */
    public int deleteLiudongById(Long id);

    /**
     * 批量删除藏品流动信息
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteLiudongByIds(Long[] ids);


}
