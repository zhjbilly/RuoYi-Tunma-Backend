package com.ruoyi.project.shenxiu.mapper;

import com.ruoyi.project.shenxiu.domain.Liudong;
import com.ruoyi.project.shenxiu.domain.LiudongDetail;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 藏品流动明细信息Mapper接口
 * 
 * @author tunma
 * @date 2025-04-05
 */
public interface LiudongDetailMapper
{

    String APPLY = "APPLY";
    String CANCEL = "CANCEL";
    String APPROVE = "APPROVE";
    String REJECT = "REJECT";
    String BACK_APPLY = "BACK_APPLY";
    String RETURN = "RETURN";

    /**
     * 查询藏品流动详细信息列表
     * 
     * @param liudongId 藏品流动id
     * @param states 状态
     * @return 藏品流动详细信息集合
     */
    List<LiudongDetail> selectLiudongDetailList(@Param("liudongId") Long liudongId, @Param("states") List<String> states);

    /**
     * 新增藏品流动信息
     * 
     * @param liudongDetail 藏品流动信息
     * @return 结果
     */
    int insertLiudongDetail(LiudongDetail liudongDetail);


}
