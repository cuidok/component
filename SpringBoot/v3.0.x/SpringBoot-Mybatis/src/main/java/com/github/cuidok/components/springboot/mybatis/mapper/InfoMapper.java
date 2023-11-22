package com.github.cuidok.components.springboot.mybatis.mapper;

import com.github.cuidok.components.springboot.mybatis.model.InfoPO;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Mapper
@Repository
public interface InfoMapper {

    int insert(InfoPO po);

    int deleteInfoById(Long id);

    int updateInfoById(InfoPO po);

    InfoPO selectInfoById(Long id);
}
