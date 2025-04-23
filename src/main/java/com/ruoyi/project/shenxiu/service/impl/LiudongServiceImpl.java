package com.ruoyi.project.shenxiu.service.impl;

import java.util.List;

import com.ruoyi.common.utils.SecurityUtils;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.common.utils.DateUtils;

import com.ruoyi.project.shenxiu.domain.Cangchu;
import com.ruoyi.project.shenxiu.domain.LiudongDetail;
import com.ruoyi.project.shenxiu.mapper.CangchuMapper;
import com.ruoyi.project.shenxiu.mapper.LiudongDetailMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.project.shenxiu.mapper.LiudongMapper;
import com.ruoyi.project.shenxiu.domain.Liudong;
import com.ruoyi.project.shenxiu.service.ILiudongService;
import org.springframework.transaction.support.TransactionTemplate;

import static com.ruoyi.project.shenxiu.mapper.LiudongDetailMapper.*;

/**
 * 藏品流动信息Service业务层处理
 *
 * @author tunma
 * @date 2025-04-05
 */
@Service
public class LiudongServiceImpl implements ILiudongService {

    // 待审核
    public static final String PENDING_APPROVAL = "pending_approval";
    // 审批通过
    public static final String PASSED = "passed";
    // 审核拒绝
    public static final String REJECT = "reject";
    // 归还审核
    public static final String BACK_APPROVAL = "back_approval";
    // 归还通过
    public static final String RETURNED = "returned";

    @Autowired
    private LiudongMapper liudongMapper;

    @Autowired
    private LiudongDetailMapper liudongDetailMapper;

    @Autowired
    private CangchuMapper cangchuMapper;

    @Autowired
    private TransactionTemplate transactionTemplate;

    /**
     * 查询藏品流动信息
     *
     * @param id 藏品流动信息主键
     * @return 藏品流动信息
     */
    @Override
    public Liudong selectLiudongById(Long id) {
        return liudongMapper.selectLiudongById(id);
    }

    /**
     * 查询藏品流动信息列表
     *
     * @param liudong 藏品流动信息
     * @return 藏品流动信息
     */
    @Override
    public List<Liudong> selectLiudongList(Liudong liudong) {
        return liudongMapper.selectLiudongList(liudong);
    }

    /**
     * 新增藏品流动信息
     *
     * @param liudong 藏品流动信息
     * @return 结果
     */
    @Override
    public AjaxResult insertLiudong(Liudong liudong) {
        Liudong query = new Liudong();
        query.setCangpinId(liudong.getCangpinId());
        // 未删除
        query.setDeleted(0);
        List<Liudong> list = liudongMapper.selectLiudongList(query);
        if (StringUtils.isNotEmpty(list) && list.stream().anyMatch(e -> e.getZhuangtai().equals(PENDING_APPROVAL) || e.getZhuangtai().equals(PASSED) || e.getZhuangtai().equals(BACK_APPROVAL))) {
            return AjaxResult.error("该藏品已在审批中，不可重复申请");
        }
        liudong.setCreateTime(DateUtils.getNowDate());
        liudong.setCreateBy(String.valueOf(SecurityUtils.getUserId()));
        liudong.setZhuangtai(PENDING_APPROVAL);
        Cangchu cangchu = cangchuMapper.selectCangchuById(liudong.getCangpinId());
        if (cangchu.getCangpinShuliang() < 1) {
            return AjaxResult.error("该藏品库存不足");
        }
        liudong.setCangchuId(cangchu.getId());
        transactionTemplate.execute(status -> {
            // 减少库存
            if (1 > cangchuMapper.deductCangchuById(liudong.getCangpinId(), 1)) {
                throw new RuntimeException("藏品不存在,请联系管理员");
            }
            // 新增流动记录
            if (1 > liudongMapper.insertLiudong(liudong)) {
                throw new RuntimeException("新增失败,请联系管理员");
            }
            // 流动明细
            LiudongDetail detail = new LiudongDetail();
            detail.setLiudongId(liudong.getId());
            detail.setState(APPLY);
            detail.setCreateBy(String.valueOf(SecurityUtils.getUserId()));
            detail.setCreateTime(DateUtils.getNowDate());
            if (1 > liudongDetailMapper.insertLiudongDetail(detail)) {
                throw new RuntimeException("新增失败,请联系管理员");
            }
            return 1;
        });
        return AjaxResult.success();
    }

    /**
     * 修改藏品流动信息
     *
     * @param liudong 藏品流动信息
     * @return 结果
     */
    @Override
    public AjaxResult updateLiudong(Liudong liudong) {
        Liudong existLiudong = liudongMapper.selectLiudongById(liudong.getId());

        return AjaxResult.success(liudongMapper.updateLiudong(liudong));
    }

    /**
     * 批量删除藏品流动信息
     *
     * @param ids 需要删除的藏品流动信息主键
     * @return 结果
     */
    @Override
    public AjaxResult deleteLiudongByIds(Long[] ids) {
        return AjaxResult.success(liudongMapper.deleteLiudongByIds(ids));
    }

    /**
     * 删除藏品流动信息信息
     *
     * @param id 藏品流动信息主键
     * @return 结果
     */
    @Override
    public AjaxResult deleteLiudongById(Long id) {
        return AjaxResult.success(liudongMapper.deleteLiudongById(id));
    }

    @Override
    public AjaxResult approveLiudong(Long id, boolean approve) {
        Liudong liudong = liudongMapper.selectLiudongById(id);
        if (null == liudong || liudong.getDeleted() == 1) {
            return AjaxResult.error("该记录不存在");
        }
        if (!liudong.getZhuangtai().equals(PENDING_APPROVAL)) {
            return AjaxResult.error("该记录已审批");
        }
        transactionTemplate.execute(status -> {
            // 审批通过
            liudong.setUpdateTime(DateUtils.getNowDate());
            liudong.setUpdateBy(String.valueOf(SecurityUtils.getUserId()));
            liudong.setZhuangtai(approve ? PASSED : REJECT);
            if (1 > liudongMapper.updateLiudong(liudong)) {
                throw new RuntimeException("审批失败,请联系管理员");
            }
            // 流动明细
            LiudongDetail detail = new LiudongDetail();
            detail.setLiudongId(liudong.getId());
            detail.setState(approve ? APPROVE : LiudongDetailMapper.REJECT);
            detail.setCreateBy(String.valueOf(SecurityUtils.getUserId()));
            detail.setCreateTime(DateUtils.getNowDate());
            if (1 > liudongDetailMapper.insertLiudongDetail(detail)) {
                throw new RuntimeException("审批失败,请联系管理员");
            }
            // 增加库存
            if(!approve){
                Cangchu cangchu = cangchuMapper.selectCangchuById(liudong.getCangchuId());
                cangchu.setCangpinShuliang(cangchu.getCangpinShuliang() + 1);
                if(1 > cangchuMapper.updateCangchu(cangchu)){
                    throw new RuntimeException("增加库存失败,请联系管理员");
                }
            }
            return 1;
        });
        return AjaxResult.success();
    }

    @Override
    public AjaxResult backLiudong(Long id) {
        Liudong liudong = liudongMapper.selectLiudongById(id);
        if (null == liudong || liudong.getDeleted() == 1) {
            return AjaxResult.error("该记录不存在");
        }
        if (!liudong.getZhuangtai().equals(PASSED)) {
            return AjaxResult.error("无需归还");
        }
        transactionTemplate.execute(status -> {
            // 审批通过
            liudong.setUpdateTime(DateUtils.getNowDate());
            liudong.setUpdateBy(String.valueOf(SecurityUtils.getUserId()));
            liudong.setZhuangtai(BACK_APPROVAL);
            if (1 > liudongMapper.updateLiudong(liudong)) {
                throw new RuntimeException("审批失败,请联系管理员");
            }
            // 流动明细
            LiudongDetail detail = new LiudongDetail();
            detail.setLiudongId(liudong.getId());
            detail.setState(BACK_APPLY);
            detail.setCreateBy(String.valueOf(SecurityUtils.getUserId()));
            detail.setCreateTime(DateUtils.getNowDate());
            if (1 > liudongDetailMapper.insertLiudongDetail(detail)) {
                throw new RuntimeException("审批失败,请联系管理员");
            }
            return 1;
        });
        return AjaxResult.success();
    }

    @Override
    public AjaxResult approveReturned(Long id) {
        Liudong liudong = liudongMapper.selectLiudongById(id);
        if (null == liudong || liudong.getDeleted() == 1) {
            return AjaxResult.error("该记录不存在");
        }
        if (!liudong.getZhuangtai().equals(BACK_APPROVAL)) {
            return AjaxResult.error("无需归还");
        }
        transactionTemplate.execute(status -> {
            // 审批通过
            liudong.setUpdateTime(DateUtils.getNowDate());
            liudong.setUpdateBy(String.valueOf(SecurityUtils.getUserId()));
            liudong.setZhuangtai(RETURNED);
            if (1 > liudongMapper.updateLiudong(liudong)) {
                throw new RuntimeException("审批失败,请联系管理员");
            }
            // 流动明细
            LiudongDetail detail = new LiudongDetail();
            detail.setLiudongId(liudong.getId());
            detail.setState(RETURN);
            detail.setCreateBy(String.valueOf(SecurityUtils.getUserId()));
            detail.setCreateTime(DateUtils.getNowDate());
            if (1 > liudongDetailMapper.insertLiudongDetail(detail)) {
                throw new RuntimeException("审批失败,请联系管理员");
            }
            // 增加库存
            Cangchu cangchu = cangchuMapper.selectCangchuById(liudong.getCangchuId());
            cangchu.setCangpinShuliang(cangchu.getCangpinShuliang() + 1);
            if(1 > cangchuMapper.updateCangchu(cangchu)){
                throw new RuntimeException("增加库存失败,请联系管理员");
            }
            return 1;
        });
        return AjaxResult.success();
    }


}
