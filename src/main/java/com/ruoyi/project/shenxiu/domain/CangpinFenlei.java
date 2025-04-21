package com.ruoyi.project.shenxiu.domain;

import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.framework.aspectj.lang.annotation.Excel;
import com.ruoyi.framework.web.domain.BaseEntity;
import java.util.Date;
import java.math.BigDecimal;

/**
 * 藏品分类信息对象 cangpin_fenlei
 *
 * @author tunma
 * @date 2025-04-05
 */
public class CangpinFenlei extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 主键 */
    private Long id;

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
            .append("fenleiMingcheng", getFenleiMingcheng())
            .toString();
    }
}
