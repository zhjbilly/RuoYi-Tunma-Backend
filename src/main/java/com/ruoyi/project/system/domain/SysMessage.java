package com.ruoyi.project.system.domain;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.ruoyi.framework.aspectj.lang.annotation.Excel;
import com.ruoyi.framework.web.domain.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import java.util.Date;

/**
 * 用户消息对象 sys_message
 *
 * @author tunma
 * @date 2025-03-21
 */
public class SysMessage extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 主键 */
    private Long id;

    /** 用户 */
    @Excel(name = "用户")
    private Long userId;

    /** 消息类型 */
    @Excel(name = "消息类型")
    private String messageType;

    /** 消息内容 */
    @Excel(name = "消息内容")
    private String messageContent;

    /** 路由地址 */
    @Excel(name = "路由地址")
    private String routingAddress;

    /** 已读 */
    @Excel(name = "已读")
    private String read;

    /** 读取时间 */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @Excel(name = "读取时间", width = 30, dateFormat = "yyyy-MM-dd HH:mm:ss")
    private Date readTime;

    /** 删除标志 */
    private String delFlag;




    public void setId(Long id)
    {
        this.id = id;
    }

    public Long getId()
    {
        return id;
    }
    public void setUserId(Long userId)
    {
        this.userId = userId;
    }

    public Long getUserId()
    {
        return userId;
    }
    public void setMessageType(String messageType)
    {
        this.messageType = messageType;
    }

    public String getMessageType()
    {
        return messageType;
    }
    public void setMessageContent(String messageContent)
    {
        this.messageContent = messageContent;
    }

    public String getMessageContent()
    {
        return messageContent;
    }
    public void setRoutingAddress(String routingAddress)
    {
        this.routingAddress = routingAddress;
    }

    public String getRoutingAddress()
    {
        return routingAddress;
    }
    public void setRead(String read)
    {
        this.read = read;
    }

    public String getRead()
    {
        return read;
    }
    public void setReadTime(Date readTime)
    {
        this.readTime = readTime;
    }

    public Date getReadTime()
    {
        return readTime;
    }
    public void setDelFlag(String delFlag)
    {
        this.delFlag = delFlag;
    }

    public String getDelFlag()
    {
        return delFlag;
    }



    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
                .append("id", getId())
                .append("userId", getUserId())
                .append("messageType", getMessageType())
                .append("messageContent", getMessageContent())
                .append("routingAddress", getRoutingAddress())
                .append("read", getRead())
                .append("createTime", getCreateTime())
                .append("readTime", getReadTime())
                .append("delFlag", getDelFlag())
                .toString();
    }
}
