package com.ssm.service.impl;

import com.ssm.entity.Tag;
import com.ssm.mapper.TagMapper;
import com.ssm.service.ITagService;
import javafx.scene.control.Tab;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class TagServiceImpl implements ITagService {
    @Resource
    private TagMapper tagMapper;

    @Override
    public int saveTag(Tag tag) {
        return this.tagMapper.saveTag(tag);
    }

    @Override
    public int deleteTag(Tag tag) {
        try {
            return this.tagMapper.deleteTag(tag);
        } catch (Exception e) {
            e.printStackTrace();
            System.err.println("无法删除，可能存在外检约束！");
            return 0;
        }

    }

    @Override
    public int updateTag(Tag tag) {
        return this.tagMapper.updateTag(tag);
    }

    @Override
    public List<Tag> listTag() {
        return this.tagMapper.listTag();
    }

    @Override
    public Tag getTag(Tag tag) {
        return this.tagMapper.getTag(tag);
    }
}
