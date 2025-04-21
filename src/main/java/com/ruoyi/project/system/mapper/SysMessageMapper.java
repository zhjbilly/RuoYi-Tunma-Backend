package com.ruoyi.project.system.mapper;

import com.ruoyi.project.system.domain.SysMessage;

import java.util.List;

/**
 * 用户消息Mapper接口
 *
 * @author tunma
 * @date 2025-03-21
 */
public interface SysMessageMapper
{
    /**
     * 查询用户消息
     *
     * @param id 用户消息主键
     * @return 用户消息
     */
    public SysMessage selectSysMessageById(Long id);

    /**
     * 查询用户消息列表
     *
     * @param sysMessage 用户消息
     * @return 用户消息集合
     */
    public List<SysMessage> selectSysMessageList(SysMessage sysMessage);

    /**
     * 新增用户消息
     *
     * @param sysMessage 用户消息
     * @return 结果
     */
    public int insertSysMessage(SysMessage sysMessage);

    /**
     * 修改用户消息
     *
     * @param sysMessage 用户消息
     * @return 结果
     */
    public int updateSysMessage(SysMessage sysMessage);

    /**
     * 删除用户消息
     *
     * @param id 用户消息主键
     * @return 结果
     */
    public int deleteSysMessageById(Long id);

    /**
     * 批量删除用户消息
     *
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteSysMessageByIds(Long[] ids);


    /**
     * 根据 userId 和 read 状态查询消息数量
     *
     * @param userId 用户 ID
     * @param read 消息是否已读
     * @return 消息数量
     */
    public int selectMessageCountByUserIdAndRead(Long userId, String read);



    /**
     * 根据用户 ID 修改消息的 read 状态
     *
     * @param userId 用户 ID
     * @param read 消息是否已读
     * @return 更新结果
     */
    public int updateMessageReadByUserId(Long userId, String read);


}
