package com.ssm.service;

import com.ssm.entity.EssayEcharts;

import java.util.List;

/**
 * @Deacription 在此编写描述信息
 * @Author Administrator
 * @Date 2020/11/26 10:10
 * @Version 1.0
 **/
public interface IEssayEchartsService {
    List<EssayEcharts> listTagCount();
}
