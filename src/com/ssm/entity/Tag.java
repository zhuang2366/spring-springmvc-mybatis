package com.ssm.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

/**
 * @Description 博客标签
 **/
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Tag implements Serializable {
    /** ID */
    private Integer id;
    /** 标签名 */
    private String name;

    public Tag(Integer id) {
        this.id = id;
    }
}