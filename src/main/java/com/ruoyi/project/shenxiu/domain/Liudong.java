package com.ruoyi.project.shenxiu.domain;

import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.framework.aspectj.lang.annotation.Excel;
import com.ruoyi.framework.web.domain.BaseEntity;
import java.util.Date;
import java.math.BigDecimal;

/**
 * 藏品流动信息对象 liudong
 *
 * @author tunma
 * @date 2025-04-05
 */
public class Liudong extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 主键 */
    private Long id;

    /** 藏品 */
    @Excel(name = "藏品")
    private Long cangpinId;

    /** 状态 */
    @Excel(name = "状态")
    private String zhuangtai;

    /** 借阅类型 */
    @Excel(name = "借阅类型")
    private String jieyueleixing;


    /** 藏品名称 */
    @Excel(name = "藏品名称")
    private String mingcheng;

    /** 主图 */
    @Excel(name = "主图")
    private String zhutu;

    /** 等级 */
    @Excel(name = "等级")
    private String dengji;



    public void setId(Long id)
    {
        this.id = id;
    }

    public Long getId()
    {
        return id;
    }
    public void setCangpinId(Long cangpinId)
    {
        this.cangpinId = cangpinId;
    }

    public Long getCangpinId()
    {
        return cangpinId;
    }
    public void setZhuangtai(String zhuangtai)
    {
        this.zhuangtai = zhuangtai;
    }

    public String getZhuangtai()
    {
        return zhuangtai;
    }
    public void setJieyueleixing(String jieyueleixing)
    {
        this.jieyueleixing = jieyueleixing;
    }

    public String getJieyueleixing()
    {
        return jieyueleixing;
    }

    public void setMingcheng(String mingcheng)
    {
    this.mingcheng = mingcheng;
    }

    public String getMingcheng()
    {
    return mingcheng;
    }
    public void setZhutu(String zhutu)
    {
    this.zhutu = zhutu;
    }

    public String getZhutu()
    {
    return zhutu;
    }
    public void setDengji(String dengji)
    {
    this.dengji = dengji;
    }

    public String getDengji()
    {
    return dengji;
    }


    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("cangpinId", getCangpinId())
            .append("zhuangtai", getZhuangtai())
            .append("jieyueleixing", getJieyueleixing())
            .append("createTime", getCreateTime())
            .append("mingcheng", getMingcheng())
            .append("zhutu", getZhutu())
            .append("dengji", getDengji())
            .toString();
    }
}
