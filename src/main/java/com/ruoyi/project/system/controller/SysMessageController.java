package com.ruoyi.project.system.controller;


import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.framework.aspectj.lang.annotation.Log;
import com.ruoyi.framework.aspectj.lang.enums.BusinessType;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.framework.web.page.TableDataInfo;
import com.ruoyi.project.system.domain.SysMessage;
import com.ruoyi.project.system.service.ISysMessageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * 用户消息Controller
 *
 * @author tunma
 * @date 2025-03-21
 */
@RestController
@RequestMapping("/system/message")
public class SysMessageController extends BaseController
{
    @Autowired
    private ISysMessageService sysMessageService;


    /**
     * 查询用户消息列表
     */
    @GetMapping("/list")
    public TableDataInfo list(SysMessage sysMessage)
    {
        sysMessage.setUserId(getUserId());
        startPage();
        List<SysMessage> list = sysMessageService.selectSysMessageList(sysMessage);
        return getDataTable(list);
    }

    /**
     * 导出用户消息列表
     */
    @Log(title = "用户消息", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, SysMessage sysMessage)
    {
        List<SysMessage> list = sysMessageService.selectSysMessageList(sysMessage);
        ExcelUtil<SysMessage> util = new ExcelUtil<SysMessage>(SysMessage.class);
        util.exportExcel(response, list, "用户消息数据");
    }

    /**
     * 获取用户消息详细信息
     */
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(sysMessageService.selectSysMessageById(id));
    }

    /**
     * 新增用户消息
     */
    @PreAuthorize("@ss.hasPermi('system:message:add')")
    @Log(title = "用户消息", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody SysMessage sysMessage)
    {
        return sysMessageService.insertSysMessage(sysMessage);
    }

    /**
     * 修改用户消息
     */
    @PreAuthorize("@ss.hasPermi('system:message:edit')")
    @Log(title = "用户消息", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody SysMessage sysMessage)
    {
        return sysMessageService.updateSysMessage(sysMessage);
    }

    /**
     * 删除用户消息
     */
    @PreAuthorize("@ss.hasPermi('system:message:remove')")
    @Log(title = "用户消息", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return sysMessageService.deleteSysMessageByIds(ids);
    }


    @GetMapping(value = "/unread/count")
    public AjaxResult count()
    {
        return success(sysMessageService.selectMessageCountByUserIdAndRead(getUserId(), "N"));
    }


    @PutMapping(value = "/read/all")
    public AjaxResult readAll()
    {
        sysMessageService.updateMessageReadByUserId(getUserId(), "Y");
        return success();
    }

    @PutMapping(value = "/read/{id}")
    public AjaxResult readItem(@PathVariable Long id)
    {
        sysMessageService.selectSysMessageById(id);
        return success();
    }



}
