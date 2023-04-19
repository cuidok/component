package cn.vxnm.component.springboot.mybatis.multi.db.mapper.mysql.b;

import cn.vxnm.component.springboot.mybatis.multi.db.model.InfoPO;
import org.junit.Assert;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.time.LocalDateTime;
import java.util.List;

@SpringBootTest
@RunWith(SpringRunner.class)
public class MysqlBInfoMapperTest {


    @Autowired
    private MysqlBInfoMapper mysqlBInfoMapper;

    @org.junit.Test
    public void run() {

        // write into db
        InfoPO infoPO = new InfoPO();
        infoPO.setInfo("this is mysql B");
        infoPO.setCreateTime(LocalDateTime.now());

        int insert = mysqlBInfoMapper.insert(infoPO);
        Assert.assertTrue(insert > 0);

        // read from db
        List<InfoPO> infoPOS = mysqlBInfoMapper.selectAll();
        Assert.assertTrue(infoPOS.size() > 0);

        // print detail
        for (InfoPO info : infoPOS) {
            System.out.println(info);
        }
    }
}