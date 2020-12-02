package com.ssm.test;

import com.github.pagehelper.PageHelper;
import com.ssm.entity.Essay;
import com.ssm.service.IEssayService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.Date;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:applicationContext.xml")
public class EssayTest {
    @Resource
    private IEssayService essayService;

    @Test
    public void save(){
        Essay essay = new Essay();
        essay.setContent("内容");
        essay.setPreviewImg("预览图");
        essay.setPreviewNum(12);
        essay.setTagId(1);
        essay.setTime(new Date());
        essay.setStatus(1);
        essay.setTitle("标题");
        this.essayService.saveEssay(essay);
    }

    @Test
    public void delete(){
        ArrayList<Integer> list = new ArrayList<>();
        list.add(14);
        list.add(15);
        list.add(16);
        this.essayService.deleteEssay(list);
    }

    @Test
    public void update(){
        Essay essay = new Essay();
        essay.setId(13);
        essay.setPreviewImg("图片预览图");
        essay.setTitle("新的标题");
        this.essayService.updateEssay(essay);
    }

    @Test
    public void list(){
        PageHelper.startPage(1,2);
        Essay essay = new Essay();
        essay.setTitle("题");
        this.essayService.listEssay(essay);
    }

    @Test
    public void get(){
        Essay essay = new Essay();
        essay.setId(1);
        this.essayService.getEssay(essay);
    }

}
