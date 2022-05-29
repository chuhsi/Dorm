package com.juice.po;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

/**
 * @program: dormitorySystem
 * @description: 学生卫生
 * @author: com.juice
 **/

@Data
@NoArgsConstructor
//学生卫生
public class StudentClean {
    private Integer g_id;           //ID
    private Integer s_studentid;    //学号
    private String s_name;          //姓名
    private Integer s_grade;        //卫生评分
    private Integer s_classid;      //班级编号
    private Integer s_dormitoryid;  //宿舍编号
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private Date create_time;       //创建时间
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private Date update_time;       //更新时间

}

