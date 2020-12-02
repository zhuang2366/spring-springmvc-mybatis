package com.ssm.web;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.ssm.entity.Essay;
import com.ssm.entity.Tag;
import com.ssm.service.IEssayService;
import com.ssm.service.ITagService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("web")
public class IndexWeb {
    @Resource
    private IEssayService essayService;
    @Resource
    private ITagService tagService;

    @GetMapping("essayQuery")
    public String essayQuery(String title,Map<String,Object> map){
        // 标签所有
        map.put("tagList",listTag());
        // 随便看看5条
        map.put("kk",this.essayService.randEssay(5));
        // 热门阅读5条
        map.put("rm",listEssay(4,5));

        map.put("title",title);
        map.put("list",this.essayService.listEssay(new Essay(title)));

        return "blog/search";
    }

    @GetMapping("listPage/{id}/{pageNum}")
    public String listPage(@PathVariable("id") Integer id , @PathVariable("pageNum") Integer pageNum,Map<String,Object> map){

        // 标签所有
        map.put("tagList",listTag());
        // 随便看看5条
        map.put("kk",this.essayService.randEssay(5));
        // 热门阅读5条
        map.put("rm",listEssay(4,5));

        // 文章列表
        Essay essay = new Essay();
        essay.setTagId(id);
        PageHelper.startPage(pageNum,10);
        List<Essay> list = this.essayService.listEssay(essay);
        map.put("id",id);
        map.put("listEssay",list);
        PageInfo<Essay> pageInfo = new PageInfo<>(list);
        map.put("pageNum",pageInfo.getPageNum());
        map.put("pageSize",pageInfo.getPageSize());
        map.put("total",pageInfo.getTotal());
        map.put("pages",pageInfo.getPages());

        // 标签名
        map.put("tagName",this.tagService.getTag(new Tag(id)).getName());

        return "blog/list";
    }

    @GetMapping("essayList/{id}")
    public String essayList(@PathVariable("id")Integer id,Map<String,Object> map){
        // 标签所有
        map.put("tagList",listTag());
        // 随便看看5条
        map.put("kk",this.essayService.randEssay(5));
        // 热门阅读5条
        map.put("rm",listEssay(4,5));

        // 文章列表
        Essay essay = new Essay();
        essay.setTagId(id);
        PageHelper.startPage(1,10);
        List<Essay> list = this.essayService.listEssay(essay);
        map.put("id",id);
        map.put("listEssay",list);
        PageInfo<Essay> pageInfo = new PageInfo<>(list);
        map.put("pageNum",pageInfo.getPageNum());
        map.put("pageSize",pageInfo.getPageSize());
        map.put("total",pageInfo.getTotal());
        map.put("pages",pageInfo.getPages());

        // 标签名
        map.put("tagName",this.tagService.getTag(new Tag(id)).getName());

        return "blog/list";
    }

    @GetMapping("get/{id}")
    public String get(@PathVariable("id")Integer id,Map<String,Object> map){
        // 增加阅读量
        this.essayService.addPreviewNum(id);
        // 选中文章
        map.put("essay",this.essayService.getEssay(new Essay(id)));
        // 标签所有
        map.put("tagList",listTag());
        // 随便看看5条
        map.put("kk",this.essayService.randEssay(5));
        // 热门阅读5条
        map.put("rm",listEssay(4,5));

        // 上一篇
        map.put("up",this.essayService.up(id));
        // 下一篇
        map.put("next",this.essayService.next(id));
        // 猜你喜欢6条
        map.put("rand",this.essayService.randEssay(6));

        return "blog/article";
    }

    @GetMapping("index")
    public String index(Map<String,Object> map){
        /** 状态（1、轮播图，2、头条，3、随便看看，4、热门阅读，5、专题专栏） */
        // 轮播3条
        map.put("lb",listEssay(1,3));
        // 头条5条
        map.put("tt",listEssay(2,5));
        // 专栏3条
        map.put("zl",listEssay(5,3));
        // 列表15条
        map.put("essayList",listEssay(10));
        // 随便看看5条
        map.put("kk",this.essayService.randEssay(5));
        // 热门阅读5条
        map.put("rm",listEssay(4,5));
        // 标签所有
        map.put("tagList",listTag());
        return "blog/index";
    }

    private List<Tag> listTag(){
        return this.tagService.listTag();
    }
    private List<Essay> listEssay(Integer status,Integer pageSize){
        PageHelper.startPage(1,pageSize);
        Essay essay = new Essay();
        essay.setStatus(status);
        List<Essay> list = this.essayService.listEssay(essay);
        return list;
    }
    private List<Essay> listEssay(Integer pageSize){
        PageHelper.startPage(1,pageSize);
        List<Essay> list = this.essayService.listEssay(new Essay());
        return list;
    }

}
