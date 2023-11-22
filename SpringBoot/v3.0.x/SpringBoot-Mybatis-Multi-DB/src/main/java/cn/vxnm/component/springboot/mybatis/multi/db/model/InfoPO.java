package cn.vxnm.component.springboot.mybatis.multi.db.model;

import java.time.LocalDateTime;

public class InfoPO {

    private Long id;

    private String info;

    private LocalDateTime createTime;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getInfo() {
        return info;
    }

    public void setInfo(String info) {
        this.info = info;
    }

    public LocalDateTime getCreateTime() {
        return createTime;
    }

    public void setCreateTime(LocalDateTime createTime) {
        this.createTime = createTime;
    }

    @Override
    public String toString() {
        return "InfoModel{" +
                "id=" + id +
                ", info='" + info + '\'' +
                ", createTime=" + createTime +
                '}';
    }
}
