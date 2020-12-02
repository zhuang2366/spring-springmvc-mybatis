package com.ssm.controller;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.ssm.entity.Essay;
import com.ssm.service.IEssayService;
import com.ssm.service.ITagService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("essay")
public class EssayController {
    @Resource
    private ITagService tagService;
    @Resource
    private IEssayService essayService;

    @GetMapping("copyAdd/{id}")
    public String copyAdd(@PathVariable("id")Integer id, Model model){
        Essay essay = new Essay();
        essay.setId(id);

        // 获取标签数据
        model.addAttribute("tagList", this.tagService.listTag());
        model.addAttribute("essay",this.essayService.getEssay(essay));
        return "essay/essay_copy_add";
    }

    @PostMapping("updateSave")
    public String updateSave(HttpServletRequest request, Essay essay, MultipartFile uploadFile, Model model) throws IOException {
        if(!uploadFile.getOriginalFilename().equals("")){
            // 初始化组件，执行保存
            String path = "/upload/";
            String realPath = request.getSession().getServletContext().getRealPath(path);
            File file = new File(realPath);
            if (!file.exists()) {
                file.mkdirs();
            }
            String filename = uploadFile.getOriginalFilename();
            uploadFile.transferTo(new File(realPath, filename));

            // 获取服务器路径
            String contextPath = request.getContextPath();
            String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + contextPath;

            // 初始化文件保存路径，执行保存
            essay.setPreviewImg(basePath + path + filename);
        }

        // 执行修改
        this.essayService.updateEssay(essay);

        // 获取标签数据
        model.addAttribute("tagList", this.tagService.listTag());

        // 获取文章列表
        PageHelper.startPage(1, 10);
        List<Essay> list = this.essayService.listEssay(new Essay());
        PageInfo<Essay> pageInfo = new PageInfo<>(list);
        model.addAttribute("essayList", pageInfo.getList());
        model.addAttribute("pageNo", pageInfo.getPageNum());
        model.addAttribute("pageSize", pageInfo.getPageSize());
        model.addAttribute("total", pageInfo.getTotal());

        return "essay/essay_list";
    }

    @GetMapping("update/{id}")
    public String update(@PathVariable("id")Integer id, Model model){
        Essay essay = new Essay();
        essay.setId(id);

        // 获取标签数据
        model.addAttribute("tagList", this.tagService.listTag());
        model.addAttribute("essay",this.essayService.getEssay(essay));
        return "essay/essay_update";
    }

    @GetMapping("get/{id}")
    public String get(@PathVariable("id")Integer id, Model model){
        // 新增查询次数
        this.essayService.addPreviewNum(id);

        // 获取查询对象
        Essay essay = new Essay();
        essay.setId(id);
        Essay essay1 = this.essayService.getEssay(essay);

        model.addAttribute("essay",essay1);
        return "essay/essay_info";
    }


    @GetMapping("del/{id}")
    public String del(@PathVariable("id")Integer id,@RequestParam(defaultValue = "1") Integer pageNum, @RequestParam(defaultValue = "10") Integer pageSize, Model model){
        // 执行删除
        List<Integer> ids = new ArrayList<>();
        ids.add(id);
        this.essayService.deleteEssay(ids);

        // 获取标签数据
        model.addAttribute("tagList", this.tagService.listTag());

        // 获取文章列表
        PageHelper.startPage(pageNum, pageSize);
        List<Essay> list = this.essayService.listEssay(new Essay());
        PageInfo<Essay> pageInfo = new PageInfo<>(list);
        model.addAttribute("essayList", pageInfo.getList());
        model.addAttribute("pageNo", pageInfo.getPageNum());
        model.addAttribute("pageSize", pageInfo.getPageSize());
        model.addAttribute("total", pageInfo.getTotal());

        return "essay/essay_list";
    }

    @PostMapping("query")
    public String query(@RequestParam(defaultValue = "1") Integer pageNum, @RequestParam(defaultValue = "10") Integer pageSize, Essay essay, Model model) {
        // 获取标签数据
        model.addAttribute("tagList", this.tagService.listTag());

        // 获取文章列表
        PageHelper.startPage(pageNum, pageSize);
        List<Essay> list = this.essayService.listEssay(essay);
        PageInfo<Essay> pageInfo = new PageInfo<>(list);
        model.addAttribute("essayList", pageInfo.getList());
        model.addAttribute("pageNo", pageInfo.getPageNum());
        model.addAttribute("pageSize", pageInfo.getPageSize());
        model.addAttribute("total", pageInfo.getTotal());

        return "essay/essay_list";
    }

    @GetMapping("list")
    public String list(@RequestParam(defaultValue = "1") Integer pageNum, @RequestParam(defaultValue = "10") Integer pageSize, Model model) {
        // 获取标签数据
        model.addAttribute("tagList", this.tagService.listTag());

        // 获取文章列表
        PageHelper.startPage(pageNum, pageSize);
        List<Essay> list = this.essayService.listEssay(new Essay());
        PageInfo<Essay> pageInfo = new PageInfo<>(list);
        model.addAttribute("essayList", pageInfo.getList());
        model.addAttribute("pageNo", pageInfo.getPageNum());
        model.addAttribute("pageSize", pageInfo.getPageSize());
        model.addAttribute("total", pageInfo.getTotal());

        return "essay/essay_list";
    }

    @PostMapping("save")
    public String save(HttpServletRequest request, Essay essay, MultipartFile uploadFile, Model model) throws IOException {
        if(uploadFile.getSize() != 0){
            // 初始化组件，执行保存
            String path = "/upload/";
            String realPath = request.getSession().getServletContext().getRealPath(path);
            File file = new File(realPath);
            if (!file.exists()) {
                file.mkdirs();
            }
            String filename = uploadFile.getOriginalFilename();
            uploadFile.transferTo(new File(realPath, filename));

            // 获取服务器路径
            String contextPath = request.getContextPath();
            String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + contextPath;

            // 初始化文件保存路径，执行保存
            essay.setPreviewImg(basePath + path + filename);
        }
        this.essayService.saveEssay(essay);

        // 获取标签数据
        model.addAttribute("tagList", this.tagService.listTag());

        // 获取文章列表
        PageHelper.startPage(1, 10);
        List<Essay> list = this.essayService.listEssay(new Essay());
        PageInfo<Essay> pageInfo = new PageInfo<>(list);
        model.addAttribute("essayList", pageInfo.getList());
        model.addAttribute("pageNo", pageInfo.getPageNum());
        model.addAttribute("pageSize", pageInfo.getPageSize());
        model.addAttribute("total", pageInfo.getTotal());

        return "essay/essay_list";
    }

    /**
     * @return java.lang.String
     * @Description 跳转到添加页面
     * @Param [model]
     **/
    @GetMapping("add")
    public String add(Model model) {
        // 获取标签数据
        model.addAttribute("tagList", this.tagService.listTag());
        return "essay/essay_add";
    }

    /**
     * @return java.util.Map<java.lang.String, java.lang.Object>
     * @Description 编辑器文件上传
     * @Param [request, uploadFile]
     **/
    @PostMapping("uploadImg")
    @ResponseBody
    public Map<String, Object> uploadImg(HttpServletRequest request, MultipartFile uploadFile) throws IOException {
        // 初始化组件，执行保存
        String path = "/upload/";
        String realPath = request.getSession().getServletContext().getRealPath(path);
        File file = new File(realPath);
        if (!file.exists()) {
            file.mkdirs();
        }
        String filename = uploadFile.getOriginalFilename();
        uploadFile.transferTo(new File(realPath, filename));

        // 获取服务器路径
        String contextPath = request.getContextPath();
        String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + contextPath;

        // 封装返回
        String[] imgPath = {basePath + path + filename};
        HashMap<String, Object> map = new HashMap<>();
        map.put("errno", 0);
        map.put("data", imgPath);
        return map;
    }
}
