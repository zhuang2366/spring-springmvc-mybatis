package com.ssm.test;

import com.ssm.service.IEssayEchartsService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;

/**
 * @Deacription 在此编写描述信息
 * @Author Administrator
 * @Date 2020/11/26 10:12
 * @Version 1.0
 **/
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:applicationContext.xml")
public class EssayEchartsTest {
    @Resource
    private IEssayEchartsService essayEchartsService;

    @Test
    public void list(){
        this.essayEchartsService.listTagCount();
    }
}
