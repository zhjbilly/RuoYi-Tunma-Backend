package com.ruoyi.project.shenxiu.controller;


import java.util.List;
import javax.servlet.http.HttpServletResponse;

import com.ruoyi.framework.aspectj.lang.annotation.Anonymous;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import com.ruoyi.framework.aspectj.lang.annotation.Log;
import com.ruoyi.framework.aspectj.lang.enums.BusinessType;
import com.ruoyi.project.shenxiu.domain.Cangpin;
import com.ruoyi.project.shenxiu.service.ICangpinService;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.framework.web.page.TableDataInfo;

/**
 * 藏品信息Controller
 *
 * @author tunma
 * @date 2025-04-05
 */
@RestController
@RequestMapping("/shenxiu/cangpin")
public class CangpinController extends BaseController
{
    @Autowired
    private ICangpinService cangpinService;


    /**
     * 查询藏品信息列表
     */
    @Anonymous
    @GetMapping("/list")
    public TableDataInfo list(Cangpin cangpin)
    {
        startPage();
        List<Cangpin> list = cangpinService.selectCangpinList(cangpin);
        return getDataTable(list);
    }

    /**
     * 导出藏品信息列表
     */
    @PreAuthorize("@ss.hasPermi('shenxiu:cangpin:export')")
    @Log(title = "藏品信息", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, Cangpin cangpin)
    {
        List<Cangpin> list = cangpinService.selectCangpinList(cangpin);
        ExcelUtil<Cangpin> util = new ExcelUtil<Cangpin>(Cangpin.class);
        util.exportExcel(response, list, "藏品信息数据");
    }

    /**
     * 获取藏品信息详细信息
     */
    @Anonymous
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(cangpinService.selectCangpinById(id));
    }

    /**
     * 新增藏品信息
     */
    @PreAuthorize("@ss.hasPermi('shenxiu:cangpin:add')")
    @Log(title = "藏品信息", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody Cangpin cangpin)
    {
        return cangpinService.insertCangpin(cangpin);
    }

    /**
     * 修改藏品信息
     */
    @PreAuthorize("@ss.hasPermi('shenxiu:cangpin:edit')")
    @Log(title = "藏品信息", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody Cangpin cangpin)
    {
        return cangpinService.updateCangpin(cangpin);
    }

    /**
     * 删除藏品信息
     */
    @PreAuthorize("@ss.hasPermi('shenxiu:cangpin:remove')")
    @Log(title = "藏品信息", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return cangpinService.deleteCangpinByIds(ids);
    }
}
