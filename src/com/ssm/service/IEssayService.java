package com.ssm.service;

import com.ssm.entity.Essay;

import java.util.List;

public interface IEssayService {
    /** 新增 */
    int saveEssay(Essay essay);
    /** 删除 */
    int deleteEssay(List<Integer> ids);
    /** 修改 */
    int updateEssay(Essay essay);
    /** 查询列表 */
    List<Essay> listEssay(Essay essay);
    /** 查询对象 */
    Essay getEssay(Essay essay);
    /** 新增预览数 */
    int addPreviewNum(Integer id);

    /** 上一篇 */
    Essay up(Integer id);
    /** 下一篇 */
    Essay next(Integer id);
    /** 随机 */
    List<Essay> randEssay(Integer pageSize);

}
