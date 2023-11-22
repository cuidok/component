package cn.vxnm.component.springboot.mybatis.multi.db.mapper.mysql.a;

import cn.vxnm.component.springboot.mybatis.multi.db.model.InfoPO;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface MysqlAInfoMapper {

    int insert(InfoPO infoPO);

    List<InfoPO> selectAll();
}
