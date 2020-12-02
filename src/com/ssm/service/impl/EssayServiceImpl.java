package com.ssm.service.impl;

import com.ssm.entity.Essay;
import com.ssm.mapper.EssayMapper;
import com.ssm.service.IEssayService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;


@Service
public class EssayServiceImpl implements IEssayService {
    @Resource
    private EssayMapper essayMapper;

    @Override
    public int saveEssay(Essay essay) {
        return this.essayMapper.saveEssay(essay);
    }

    @Override
    public int deleteEssay(List<Integer> ids) {
        return this.essayMapper.deleteEssay(ids);
    }

    @Override
    public int updateEssay(Essay essay) {
        return this.essayMapper.updateEssay(essay);
    }

    @Override
    public List<Essay> listEssay(Essay essay) {
        return this.essayMapper.listEssay(essay);
    }

    @Override
    public Essay getEssay(Essay essay) {
        return this.essayMapper.getEssay(essay);
    }

    @Override
    public int addPreviewNum(Integer id) {
        return this.essayMapper.addPreviewNum(id);
    }

    @Override
    public Essay up(Integer id) {
        return this.essayMapper.up(id);
    }

    @Override
    public Essay next(Integer id) {
        return this.essayMapper.next(id);
    }

    @Override
    public List<Essay> randEssay(Integer pageSize) {
        return this.essayMapper.randEssay(pageSize);
    }

}
