package com.ruoyi.project.shenxiu.controller;


import java.util.List;
import javax.servlet.http.HttpServletResponse;

import com.ruoyi.framework.aspectj.lang.annotation.Anonymous;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import com.ruoyi.framework.aspectj.lang.annotation.Log;
import com.ruoyi.framework.aspectj.lang.enums.BusinessType;
import com.ruoyi.project.shenxiu.domain.CangpinFenlei;
import com.ruoyi.project.shenxiu.service.ICangpinFenleiService;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.framework.web.page.TableDataInfo;

/**
 * 藏品分类信息Controller
 *
 * @author tunma
 * @date 2025-04-05
 */
@RestController
@RequestMapping("/shenxiu/fenlei")
public class CangpinFenleiController extends BaseController
{
    @Autowired
    private ICangpinFenleiService cangpinFenleiService;


    /**
     * 查询藏品分类信息列表
     */
    @Anonymous
    @GetMapping("/list")
    public TableDataInfo list(CangpinFenlei cangpinFenlei)
    {
        startPage();
        List<CangpinFenlei> list = cangpinFenleiService.selectCangpinFenleiList(cangpinFenlei);
        return getDataTable(list);
    }

    /**
     * 导出藏品分类信息列表
     */
    @PreAuthorize("@ss.hasPermi('shenxiu:fenlei:export')")
    @Log(title = "藏品分类信息", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, CangpinFenlei cangpinFenlei)
    {
        List<CangpinFenlei> list = cangpinFenleiService.selectCangpinFenleiList(cangpinFenlei);
        ExcelUtil<CangpinFenlei> util = new ExcelUtil<CangpinFenlei>(CangpinFenlei.class);
        util.exportExcel(response, list, "藏品分类信息数据");
    }

    /**
     * 获取藏品分类信息详细信息
     */
    @PreAuthorize("@ss.hasPermi('shenxiu:fenlei:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(cangpinFenleiService.selectCangpinFenleiById(id));
    }

    /**
     * 新增藏品分类信息
     */
    @PreAuthorize("@ss.hasPermi('shenxiu:fenlei:add')")
    @Log(title = "藏品分类信息", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody CangpinFenlei cangpinFenlei)
    {
        return cangpinFenleiService.insertCangpinFenlei(cangpinFenlei);
    }

    /**
     * 修改藏品分类信息
     */
    @PreAuthorize("@ss.hasPermi('shenxiu:fenlei:edit')")
    @Log(title = "藏品分类信息", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody CangpinFenlei cangpinFenlei)
    {
        return cangpinFenleiService.updateCangpinFenlei(cangpinFenlei);
    }

    /**
     * 删除藏品分类信息
     */
    @PreAuthorize("@ss.hasPermi('shenxiu:fenlei:remove')")
    @Log(title = "藏品分类信息", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return cangpinFenleiService.deleteCangpinFenleiByIds(ids);
    }
}
