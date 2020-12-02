package com.ssm.service;

import com.ssm.entity.Tag;
import javafx.scene.control.Tab;

import java.util.List;

/**
 * @Deacription 在此编写描述信息
 * @Author Administrator
 * @Date 2020/11/23 10:46
 * @Version 1.0
 **/
public interface ITagService {
    int saveTag(Tag tag);
    int deleteTag(Tag tag);
    int updateTag(Tag tag);
    List<Tag> listTag();
    Tag getTag(Tag tag);
}
