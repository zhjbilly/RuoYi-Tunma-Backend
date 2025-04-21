package com.ruoyi.project.shenxiu.mapper;

import java.util.List;
import com.ruoyi.project.shenxiu.domain.Cangchu;
/**
 * 仓储信息Mapper接口
 * 
 * @author tunma
 * @date 2025-04-05
 */
public interface CangchuMapper 
{
    /**
     * 查询仓储信息
     * 
     * @param id 仓储信息主键
     * @return 仓储信息
     */
    public Cangchu selectCangchuById(Long id);

    /**
     * 查询仓储信息列表
     * 
     * @param cangchu 仓储信息
     * @return 仓储信息集合
     */
    public List<Cangchu> selectCangchuList(Cangchu cangchu);

    /**
     * 新增仓储信息
     * 
     * @param cangchu 仓储信息
     * @return 结果
     */
    public int insertCangchu(Cangchu cangchu);

    /**
     * 修改仓储信息
     * 
     * @param cangchu 仓储信息
     * @return 结果
     */
    public int updateCangchu(Cangchu cangchu);

    /**
     * 删除仓储信息
     * 
     * @param id 仓储信息主键
     * @return 结果
     */
    public int deleteCangchuById(Long id);

    /**
     * 批量删除仓储信息
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteCangchuByIds(Long[] ids);


}
