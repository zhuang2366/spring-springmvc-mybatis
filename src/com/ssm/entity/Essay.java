package com.ssm.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.util.Date;

/**
 * @Description 博客文章
 **/
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Essay implements Serializable {
    /** ID */
    private Integer id;
    /** 预览图 */
    private String previewImg;
    /** 标题 */
    private String title;
    /** 发布时间 */
    private Date time;
    /** 预览次数 */
    private Integer previewNum;
    /** 状态（1、轮播图，2、头条，[3、随便看看]，4、热门阅读，5、专题专栏） */
    private Integer status;
    /** 内容 */
    private String content;
    /** 标签表的外检 */
    private Integer tagId;
    /** 标签名 */
    private String tagName;

    public Essay(String title) {
        this.title = title;
    }
    public Essay(Integer id) {
        this.id = id;
    }
}