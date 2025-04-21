package com.ruoyi.project.shenxiu.controller;


import java.util.List;
import javax.servlet.http.HttpServletResponse;

import com.ruoyi.framework.aspectj.lang.annotation.Anonymous;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import com.ruoyi.framework.aspectj.lang.annotation.Log;
import com.ruoyi.framework.aspectj.lang.enums.BusinessType;
import com.ruoyi.project.shenxiu.domain.Cangchu;
import com.ruoyi.project.shenxiu.service.ICangchuService;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.framework.web.page.TableDataInfo;

/**
 * 仓储信息Controller
 *
 * @author tunma
 * @date 2025-04-05
 */
@RestController
@RequestMapping("/shenxiu/cangchu")
public class CangchuController extends BaseController
{
    @Autowired
    private ICangchuService cangchuService;


    /**
     * 查询仓储信息列表
     */

    @Anonymous
    @GetMapping("/list")
    public TableDataInfo list(Cangchu cangchu)
    {
        startPage();
        List<Cangchu> list = cangchuService.selectCangchuList(cangchu);
        return getDataTable(list);
    }

    /**
     * 导出仓储信息列表
     */
    @PreAuthorize("@ss.hasPermi('shenxiu:cangchu:export')")
    @Log(title = "仓储信息", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, Cangchu cangchu)
    {
        List<Cangchu> list = cangchuService.selectCangchuList(cangchu);
        ExcelUtil<Cangchu> util = new ExcelUtil<Cangchu>(Cangchu.class);
        util.exportExcel(response, list, "仓储信息数据");
    }

    /**
     * 获取仓储信息详细信息
     */
    @PreAuthorize("@ss.hasPermi('shenxiu:cangchu:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(cangchuService.selectCangchuById(id));
    }

    /**
     * 新增仓储信息
     */
    @PreAuthorize("@ss.hasPermi('shenxiu:cangchu:add')")
    @Log(title = "仓储信息", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody Cangchu cangchu)
    {
        return cangchuService.insertCangchu(cangchu);
    }

    /**
     * 修改仓储信息
     */
    @PreAuthorize("@ss.hasPermi('shenxiu:cangchu:edit')")
    @Log(title = "仓储信息", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody Cangchu cangchu)
    {
        return cangchuService.updateCangchu(cangchu);
    }

    /**
     * 删除仓储信息
     */
    @PreAuthorize("@ss.hasPermi('shenxiu:cangchu:remove')")
    @Log(title = "仓储信息", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return cangchuService.deleteCangchuByIds(ids);
    }
}
