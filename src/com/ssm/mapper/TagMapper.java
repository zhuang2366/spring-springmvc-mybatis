package com.ssm.mapper;

import com.ssm.entity.Tag;
import org.apache.ibatis.annotations.*;

import java.util.List;

@CacheNamespace
public interface TagMapper {
    @Insert("insert into tag(name) values(#{name})")
    int saveTag(Tag tag);

    @Delete("delete from tag where id = #{id}")
    int deleteTag(Tag tag);

    @Update("update tag set name = #{name} where id = #{id}")
    int updateTag(Tag tag);

    @Select("select id,name from tag order by id desc")
    List<Tag> listTag();

    @Select("select id,name from tag where id = #{id}")
    Tag getTag(Tag tag);
}