package com.ssm.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.ssm.entity.Tag;
import com.ssm.service.ITagService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("tag")
public class TagController {
    @Resource
    private ITagService tagService;
    // 前缀
    private String prefix = "tag/";


    /**
     * @Description 新增
     * @Param [pageNum, tag, map]
     * @return java.lang.String
     **/
    @PostMapping("save")
    public String save(@RequestParam(defaultValue = "1") Integer pageNum,Tag tag, Map<String, Object> map) {
        int update = this.tagService.saveTag(tag);
        PageHelper.startPage(pageNum, 10);
        List<Tag> list = this.tagService.listTag();
        PageInfo<Tag> pageInfo = new PageInfo<>(list);

        map.put("list", pageInfo.getList());
        map.put("pageNo", pageInfo.getPageNum());
        map.put("pageSize", pageInfo.getPageSize());
        map.put("total", pageInfo.getTotal());
        map.put("msg", update == 0 ? "新增失败！": "新增成功");
        return prefix + "tag_list";
    }

    /**
     * @Description 获取列表
     * @Param [pageNum, map]
     * @return java.lang.String
     **/
    @GetMapping("list")
    public String list(@RequestParam(defaultValue = "1") Integer pageNum, Map<String, Object> map) {
        PageHelper.startPage(pageNum, 10);
        List<Tag> list = this.tagService.listTag();
        PageInfo<Tag> pageInfo = new PageInfo<>(list);

        map.put("list", pageInfo.getList());
        map.put("pageNo", pageInfo.getPageNum());
        map.put("pageSize", pageInfo.getPageSize());
        map.put("total", pageInfo.getTotal());
        map.put("msg", "");
        return prefix + "tag_list";
    }

    /**
     * @Description 删除
     * @Param [pageNum, tag, map]
     * @return java.lang.String
     **/
    @GetMapping("delete")
    public String delete(@RequestParam(defaultValue = "1") Integer pageNum,Tag tag, Map<String, Object> map) {
        // 删除
        int update = this.tagService.deleteTag(tag);

        // 获取
        PageHelper.startPage(pageNum, 10);
        List<Tag> list = this.tagService.listTag();
        PageInfo<Tag> pageInfo = new PageInfo<>(list);

        map.put("list", pageInfo.getList());
        map.put("pageNo", pageInfo.getPageNum());
        map.put("pageSize", pageInfo.getPageSize());
        map.put("total", pageInfo.getTotal());
        map.put("msg", update == 0 ? "无法删除，可能存在外检约束！": "删除成功");
        return prefix + "tag_list";
    }

    /**
     * @Description 跳转到修改页面
     * @Param [tag, map]
     * @return java.lang.String
     **/
    @GetMapping("update")
    public String update(Tag tag,Map<String,Object> map){
        Tag tag1 = this.tagService.getTag(tag);
        map.put("tag",tag1);
        return prefix + "tag_update";
    }
    /** 执行修改 */
    @PostMapping("saveUpdate")
    public String saveUpdate(@RequestParam(defaultValue = "1") Integer pageNum,Tag tag, Map<String, Object> map){
        // 修改
        int update = this.tagService.updateTag(tag);

        // 获取
        PageHelper.startPage(pageNum, 10);
        List<Tag> list = this.tagService.listTag();
        PageInfo<Tag> pageInfo = new PageInfo<>(list);

        map.put("list", pageInfo.getList());
        map.put("pageNo", pageInfo.getPageNum());
        map.put("pageSize", pageInfo.getPageSize());
        map.put("total", pageInfo.getTotal());
        map.put("msg", update == 0 ? "修改失败！": "修改成功");
        return prefix + "tag_list";
    }


}
