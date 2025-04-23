package com.ruoyi.project.shenxiu.domain;

import com.ruoyi.framework.web.domain.BaseEntity;

public class LiudongDetail extends BaseEntity {
    private Long id;
    private Long liudongId;
    private String state;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getLiudongId() {
        return liudongId;
    }

    public void setLiudongId(Long liudongId) {
        this.liudongId = liudongId;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }
}
