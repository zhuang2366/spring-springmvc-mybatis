package com.ssm.controller;

import com.ssm.entity.EssayEcharts;
import com.ssm.service.IEssayEchartsService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

/**
 * @Deacription 在此编写描述信息
 * @Author Administrator
 * @Date 2020/11/26 10:13
 * @Version 1.0
 **/
@Controller
@RequestMapping("echarts")
public class EssayEchartsController {
    @Resource
    private IEssayEchartsService essayEchartsService;

    @GetMapping("tag")
    @ResponseBody
    public List<EssayEcharts> tagEcharts(Model model){
        List<EssayEcharts> list = this.essayEchartsService.listTagCount();
        return list;
    }
}
