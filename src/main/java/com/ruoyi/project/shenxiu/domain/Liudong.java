package com.ruoyi.project.shenxiu.domain;

import com.ruoyi.framework.aspectj.lang.annotation.Excel;
import com.ruoyi.framework.web.domain.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

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

    @Excel(name = "仓储")
    private Long cangchuId;

    @Excel(name = "目的地")
    private String dest;

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

    /** 删除标识 */
    private Integer deleted;

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

    public Long getCangchuId() {
        return cangchuId;
    }

    public void setCangchuId(Long cangchuId) {
        this.cangchuId = cangchuId;
    }

    public String getDest() {
        return dest;
    }

    public void setDest(String dest) {
        this.dest = dest;
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

    public Integer getDeleted() {
        return deleted;
    }
    public void setDeleted(Integer deleted) {
        this.deleted = deleted;
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
            .append("deleted", getDeleted())
            .toString();
    }
}
