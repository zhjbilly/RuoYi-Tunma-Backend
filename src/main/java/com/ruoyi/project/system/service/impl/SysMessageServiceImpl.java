package com.ruoyi.project.system.service.impl;

import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.framework.websock.WebSocketServer;
import com.ruoyi.project.system.domain.SysMessage;
import com.ruoyi.project.system.mapper.SysMessageMapper;
import com.ruoyi.project.system.service.ISysMessageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 用户消息Service业务层处理
 *
 * @author tunma
 * @date 2025-03-21
 */
@Service
public class SysMessageServiceImpl implements ISysMessageService
{
    @Autowired
    private SysMessageMapper sysMessageMapper;

    @Autowired
    private WebSocketServer webSocketServer;

    /**
     * 查询用户消息
     *
     * @param id 用户消息主键
     * @return 用户消息
     */
    @Override
    public SysMessage selectSysMessageById(Long id)
    {
        SysMessage sysMessage = sysMessageMapper.selectSysMessageById(id);
        sysMessage.setRead("Y");
        sysMessage.setReadTime(DateUtils.getNowDate());
        sysMessageMapper.updateSysMessage(sysMessage);
        return sysMessage;
    }

    /**
     * 查询用户消息列表
     *
     * @param sysMessage 用户消息
     * @return 用户消息
     */
    @Override
    public List<SysMessage> selectSysMessageList(SysMessage sysMessage)
    {
        return sysMessageMapper.selectSysMessageList(sysMessage);
    }

    /**
     * 新增用户消息
     *
     * @param sysMessage 用户消息
     * @return 结果
     */
    @Override
    public AjaxResult insertSysMessage(SysMessage sysMessage)
    {
        webSocketServer.sendMessage(sysMessage.getUserId().toString(), sysMessage.getMessageContent());
        sysMessage.setCreateTime(DateUtils.getNowDate());
        return AjaxResult.success(sysMessageMapper.insertSysMessage(sysMessage));
    }

    /**
     * 修改用户消息
     *
     * @param sysMessage 用户消息
     * @return 结果
     */
    @Override
    public AjaxResult updateSysMessage(SysMessage sysMessage)
    {
        return AjaxResult.success(sysMessageMapper.updateSysMessage(sysMessage));
    }

    /**
     * 批量删除用户消息
     *
     * @param ids 需要删除的用户消息主键
     * @return 结果
     */
    @Override
    public AjaxResult deleteSysMessageByIds(Long[] ids)
    {
        return AjaxResult.success(sysMessageMapper.deleteSysMessageByIds(ids));
    }

    /**
     * 删除用户消息信息
     *
     * @param id 用户消息主键
     * @return 结果
     */
    @Override
    public AjaxResult deleteSysMessageById(Long id)
    {
        return AjaxResult.success(sysMessageMapper.deleteSysMessageById(id));
    }


    @Override
    public int selectMessageCountByUserIdAndRead(Long userId, String read) {
        return sysMessageMapper.selectMessageCountByUserIdAndRead(userId, read);
    }


    @Override
    public int updateMessageReadByUserId(Long userId, String read) {
        return sysMessageMapper.updateMessageReadByUserId(userId, read);
    }
}
