package com.ssm.test;

import com.github.pagehelper.PageHelper;
import com.ssm.entity.Tag;
import com.ssm.service.ITagService;
import javafx.scene.control.Tab;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;
import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:applicationContext.xml")
public class TagTest {
    @Resource
    private ITagService tagService;

    @Test
    public void list(){
        // 分页查询
        PageHelper.startPage(1,3);
        List<Tag> list = this.tagService.listTag();
        System.out.println(list);
    }

    @Test
    public void save(){
        Tag tag = new Tag();
        tag.setName("操作系统");
        int update = this.tagService.saveTag(tag);
        System.out.println(update);
    }

    @Test
    public void delete(){
        Tag tag = new Tag();
        tag.setId(6);
        int update = this.tagService.deleteTag(tag);
        System.out.println(update);
    }

    @Test
    public void update(){
        Tag tag = new Tag();
        tag.setId(1);
        tag.setName("在线新闻");
        int update = this.tagService.updateTag(tag);
        System.out.println(update);
    }
}
