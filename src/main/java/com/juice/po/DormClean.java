package com.juice.po;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

/**
 * @program: dormitorySystem
 * @description: 宿舍卫生
 * @author: com.juice
 **/

@Data
@NoArgsConstructor
//宿舍卫生
public class DormClean {
    private Integer g_id;           //编号
    private Integer d_id;           //宿舍编号
    private String d_dormbuilding;//宿舍楼
    private Integer d_grade;        //宿舍卫生评分
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private Date create_time;       //创建日期
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private Date update_time;       //更新日期

}

