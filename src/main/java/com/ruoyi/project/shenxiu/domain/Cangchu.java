package com.ruoyi.project.shenxiu.domain;

import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.framework.aspectj.lang.annotation.Excel;
import com.ruoyi.framework.web.domain.BaseEntity;
import java.util.Date;
import java.math.BigDecimal;

/**
 * 仓储信息对象 cangchu
 *
 * @author tunma
 * @date 2025-04-05
 */
public class Cangchu extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 主键 */
    private Long id;

    /** 分类 */
    @Excel(name = "分类")
    private Long fenleiId;

    /** 位置 */
    @Excel(name = "位置")
    private String weizhi;

    /** 温度 */
    @Excel(name = "温度")
    private String wendu;

    /** 安全状况 */
    @Excel(name = "安全状况")
    private String anquan;

    /** 藏品数量 */
    @Excel(name = "藏品数量")
    private Long cangpinShuliang;

    /** 掌门人 */
    @Excel(name = "掌门人")
    private String zhangmenren;


    /** 分类名称 */
    @Excel(name = "分类名称")
    private String fenleiMingcheng;



    public void setId(Long id)
    {
        this.id = id;
    }

    public Long getId()
    {
        return id;
    }
    public void setFenleiId(Long fenleiId)
    {
        this.fenleiId = fenleiId;
    }

    public Long getFenleiId()
    {
        return fenleiId;
    }
    public void setWeizhi(String weizhi)
    {
        this.weizhi = weizhi;
    }

    public String getWeizhi()
    {
        return weizhi;
    }
    public void setWendu(String wendu)
    {
        this.wendu = wendu;
    }

    public String getWendu()
    {
        return wendu;
    }
    public void setAnquan(String anquan)
    {
        this.anquan = anquan;
    }

    public String getAnquan()
    {
        return anquan;
    }
    public void setCangpinShuliang(Long cangpinShuliang)
    {
        this.cangpinShuliang = cangpinShuliang;
    }

    public Long getCangpinShuliang()
    {
        return cangpinShuliang;
    }
    public void setZhangmenren(String zhangmenren)
    {
        this.zhangmenren = zhangmenren;
    }

    public String getZhangmenren()
    {
        return zhangmenren;
    }

    public void setFenleiMingcheng(String fenleiMingcheng)
    {
        this.fenleiMingcheng = fenleiMingcheng;
    }

    public String getFenleiMingcheng()
    {
        return fenleiMingcheng;
    }


    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
                .append("id", getId())
                .append("fenleiId", getFenleiId())
                .append("weizhi", getWeizhi())
                .append("wendu", getWendu())
                .append("anquan", getAnquan())
                .append("cangpinShuliang", getCangpinShuliang())
                .append("zhangmenren", getZhangmenren())
                .append("fenleiMingcheng", getFenleiMingcheng())
                .toString();
    }
}
