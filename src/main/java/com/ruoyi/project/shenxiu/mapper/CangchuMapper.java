package com.ruoyi.project.shenxiu.mapper;

import java.util.List;
import com.ruoyi.project.shenxiu.domain.Cangchu;
import org.apache.ibatis.annotations.Param;

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
    Cangchu selectCangchuById(Long id);

    /**
     * 查询仓储信息列表
     * 
     * @param cangchu 仓储信息
     * @return 仓储信息集合
     */
    List<Cangchu> selectCangchuList(Cangchu cangchu);

    /**
     * 新增仓储信息
     * 
     * @param cangchu 仓储信息
     * @return 结果
     */
    int insertCangchu(Cangchu cangchu);

    /**
     * 修改仓储信息
     * 
     * @param cangchu 仓储信息
     * @return 结果
     */
    int updateCangchu(Cangchu cangchu);

    /**
     * 删除仓储信息
     * 
     * @param id 仓储信息主键
     * @return 结果
     */
    int deleteCangchuById(Long id);

    /**
     * 批量删除仓储信息
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    int deleteCangchuByIds(Long[] ids);

    /**
     * 扣减仓储数量
     * @param id
     * @param num
     * @return
     */
    int deductCangchuById(@Param("id") Long id, @Param("num") int num);

}
