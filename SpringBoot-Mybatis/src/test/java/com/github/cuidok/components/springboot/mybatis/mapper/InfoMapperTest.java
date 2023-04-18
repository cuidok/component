package com.github.cuidok.components.springboot.mybatis.mapper;

import com.github.cuidok.components.springboot.mybatis.model.InfoPO;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.annotation.Rollback;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDateTime;

import static org.junit.jupiter.api.Assertions.*;

@SpringBootTest
class InfoMapperTest {

    @Autowired
    private InfoMapper infoMapper;

    @Test
    @Transactional
    @Rollback
    public void test() {
        InfoPO po = new InfoPO();
        po.setId(1L);
        po.setInfo("Hello World");
        po.setCreateTime(LocalDateTime.now());

        int insert = infoMapper.insert(po);
        assertTrue(insert > 0);

        InfoPO infoPO = infoMapper.selectInfoById(po.getId());
        assertNotNull(infoPO);
        assertEquals(po.getInfo(), infoPO.getInfo());
        // Compare the two time differences by 5 seconds
        assertTrue(Math.abs(po.getCreateTime().getSecond() - infoPO.getCreateTime().getSecond()) <= 5);

        infoPO.setInfo("Hello World 2");
        int update = infoMapper.updateInfoById(infoPO);
        assertTrue(update > 0);

        InfoPO infoPO2 = infoMapper.selectInfoById(po.getId());
        assertNotNull(infoPO2);
        assertEquals(infoPO.getInfo(), infoPO2.getInfo());
        // Compare the two time differences by 5 seconds
        assertTrue(Math.abs(po.getCreateTime().getSecond() - infoPO.getCreateTime().getSecond()) <= 5);

        int delete = infoMapper.deleteInfoById(po.getId());
        assertTrue(delete > 0);

        InfoPO infoPO3 = infoMapper.selectInfoById(po.getId());
        assertNull(infoPO3);
    }

}