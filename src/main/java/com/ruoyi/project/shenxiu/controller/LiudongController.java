package com.ruoyi.project.shenxiu.controller;


import java.util.List;
import javax.servlet.http.HttpServletResponse;

import com.ruoyi.framework.aspectj.lang.annotation.Anonymous;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import com.ruoyi.framework.aspectj.lang.annotation.Log;
import com.ruoyi.framework.aspectj.lang.enums.BusinessType;
import com.ruoyi.project.shenxiu.domain.Liudong;
import com.ruoyi.project.shenxiu.service.ILiudongService;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.framework.web.page.TableDataInfo;

/**
 * 藏品流动信息Controller
 *
 * @author tunma
 * @date 2025-04-05
 */
@RestController
@RequestMapping("/shenxiu/liudong")
public class LiudongController extends BaseController
{
    @Autowired
    private ILiudongService liudongService;


    /**
     * 查询藏品流动信息列表
     */
    @Anonymous
    @GetMapping("/list")
    public TableDataInfo list(Liudong liudong)
    {
        startPage();
        List<Liudong> list = liudongService.selectLiudongList(liudong);
        return getDataTable(list);
    }

    /**
     * 导出藏品流动信息列表
     */
    @PreAuthorize("@ss.hasPermi('shenxiu:liudong:export')")
    @Log(title = "藏品流动信息", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, Liudong liudong)
    {
        List<Liudong> list = liudongService.selectLiudongList(liudong);
        ExcelUtil<Liudong> util = new ExcelUtil<Liudong>(Liudong.class);
        util.exportExcel(response, list, "藏品流动信息数据");
    }

    /**
     * 获取藏品流动信息详细信息
     */
    @PreAuthorize("@ss.hasPermi('shenxiu:liudong:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(liudongService.selectLiudongById(id));
    }

    /**
     * 新增藏品流动信息
     */
    @PreAuthorize("@ss.hasPermi('shenxiu:liudong:add')")
    @Log(title = "藏品流动信息", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody Liudong liudong)
    {
        return liudongService.insertLiudong(liudong);
    }

    /**
     * 修改藏品流动信息
     */
    @PreAuthorize("@ss.hasPermi('shenxiu:liudong:edit')")
    @Log(title = "藏品流动信息", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody Liudong liudong)
    {
        return liudongService.updateLiudong(liudong);
    }

    /**
     * 删除藏品流动信息
     */
    @PreAuthorize("@ss.hasPermi('shenxiu:liudong:remove')")
    @Log(title = "藏品流动信息", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return liudongService.deleteLiudongByIds(ids);
    }
}
