package com.ssm.service.impl;

import com.ssm.entity.EssayEcharts;
import com.ssm.mapper.EssayEchartsMapper;
import com.ssm.service.IEssayEchartsService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @Deacription 在此编写描述信息
 * @Author Administrator
 * @Date 2020/11/26 10:10
 * @Version 1.0
 **/
@Service
public class EssayEchartsServiceImpl implements IEssayEchartsService {
    @Resource
    private EssayEchartsMapper essayEchartsMapper;

    @Override
    public List<EssayEcharts> listTagCount() {
        return this.essayEchartsMapper.listTagCount();
    }
}
