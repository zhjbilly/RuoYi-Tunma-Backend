package com.ruoyi.project.shenxiu.dto;

import com.ruoyi.project.shenxiu.domain.Cangpin;
import com.ruoyi.project.shenxiu.domain.Liudong;

import java.util.List;

/**
 * 藏品流动对象
 */
public class CangpinDto {

    /** 藏品信息 */
    private Cangpin cangpin;

    /** 藏品流动记录 */
    List<Liudong> liudong;

    public Cangpin getCangpin() {
        return cangpin;
    }

    public void setCangpin(Cangpin cangpin) {
        this.cangpin = cangpin;
    }

    public List<Liudong> getLiudong() {
        return liudong;
    }

    public void setLiudong(List<Liudong> liudong) {
        this.liudong = liudong;
    }
}
