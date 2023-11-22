package cn.vxnm.component.springboot.mybatis.multi.db.mapper.mysql.a;

import cn.vxnm.component.springboot.mybatis.multi.db.model.InfoPO;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.time.LocalDateTime;
import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

@SpringBootTest
public class MysqlAInfoMapperTest {

    @Autowired
    private MysqlAInfoMapper mysqlAInfoMapper;

    @Test
    public void run() {

        // write into db
        InfoPO infoPO = new InfoPO();
        infoPO.setInfo("this is mysql A");
        infoPO.setCreateTime(LocalDateTime.now());

        int insert = mysqlAInfoMapper.insert(infoPO);
        assertTrue(insert > 0);

        // read from db
        List<InfoPO> infoPOS = mysqlAInfoMapper.selectAll();
        assertTrue(infoPOS.size() > 0);

        // print detail
        for (InfoPO info : infoPOS) {
            System.out.println(info);
        }
    }
}