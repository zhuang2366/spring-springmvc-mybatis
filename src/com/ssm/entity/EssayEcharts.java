package com.ssm.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

/**
 * @Description 用于统计文章相对于的数据
 **/
@Data
@AllArgsConstructor
@NoArgsConstructor
public class EssayEcharts implements Serializable {
    private String name;
    private Integer value;
}
