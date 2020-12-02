package com.ssm.mapper;

import com.ssm.entity.EssayEcharts;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface EssayEchartsMapper {
    @Select("select  t.name as name, count(e.tag_id) as value from tag t join essay e on t.id = e.tag_id group by e.tag_id")
    List<EssayEcharts> listTagCount();
}
