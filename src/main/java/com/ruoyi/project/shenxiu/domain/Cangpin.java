package com.ruoyi.project.shenxiu.domain;

import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.framework.aspectj.lang.annotation.Excel;
import com.ruoyi.framework.web.domain.BaseEntity;
import java.util.Date;
import java.math.BigDecimal;

/**
 * 藏品信息对象 cangpin
 *
 * @author tunma
 * @date 2025-04-05
 */
public class Cangpin extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 主键 */
    private Long id;


    private Long fenleiId;
    /** 仓储 */
    @Excel(name = "仓储")
    private Long cangchuId;

    /** 藏品名称 */
    @Excel(name = "藏品名称")
    private String mingcheng;

    /** 主图 */
    @Excel(name = "主图")
    private String zhutu;

    /** 尺寸 */
    @Excel(name = "尺寸")
    private String chicun;

    /** 重量 */
    @Excel(name = "重量")
    private String zhongliang;

    /** 等级 */
    @Excel(name = "等级")
    private String dengji;

    /** 色调 */
    @Excel(name = "色调")
    private String sediao;

    /** 研究文献 */
    @Excel(name = "研究文献")
    private String yanjiuwenxian;

    /** 文件资料 */
    @Excel(name = "文件资料")
    private String wenjian;


    /** 位置 */
    @Excel(name = "位置")
    private String weizhi;

    /** 温度 */
    @Excel(name = "温度")
    private String wendu;

    /** 安全状况 */
    @Excel(name = "安全状况")
    private String anquan;

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
    public void setCangchuId(Long cangchuId)
    {
        this.cangchuId = cangchuId;
    }

    public Long getCangchuId()
    {
        return cangchuId;
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
    public void setChicun(String chicun)
    {
        this.chicun = chicun;
    }

    public String getChicun()
    {
        return chicun;
    }
    public void setZhongliang(String zhongliang)
    {
        this.zhongliang = zhongliang;
    }

    public String getZhongliang()
    {
        return zhongliang;
    }
    public void setDengji(String dengji)
    {
        this.dengji = dengji;
    }

    public String getDengji()
    {
        return dengji;
    }
    public void setSediao(String sediao)
    {
        this.sediao = sediao;
    }

    public String getSediao()
    {
        return sediao;
    }
    public void setYanjiuwenxian(String yanjiuwenxian)
    {
        this.yanjiuwenxian = yanjiuwenxian;
    }

    public String getYanjiuwenxian()
    {
        return yanjiuwenxian;
    }
    public void setWenjian(String wenjian)
    {
        this.wenjian = wenjian;
    }

    public String getWenjian()
    {
        return wenjian;
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
    public void setFenleiMingcheng(String fenleiMingcheng)
    {
    this.fenleiMingcheng = fenleiMingcheng;
    }

    public String getFenleiMingcheng()
    {
    return fenleiMingcheng;
    }

    public void setFenleiId(Long fenleiId)
    {
        this.fenleiId = fenleiId;
    }

    public Long getFenleiId()
    {
        return fenleiId;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("cangchuId", getCangchuId())
            .append("mingcheng", getMingcheng())
            .append("zhutu", getZhutu())
            .append("chicun", getChicun())
            .append("zhongliang", getZhongliang())
            .append("dengji", getDengji())
            .append("sediao", getSediao())
            .append("yanjiuwenxian", getYanjiuwenxian())
            .append("wenjian", getWenjian())
            .append("weizhi", getWeizhi())
            .append("wendu", getWendu())
            .append("anquan", getAnquan())
            .append("fenleiMingcheng", getFenleiMingcheng())
            .toString();
    }
}
