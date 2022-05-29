package com.juice.po;

import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.util.List;

@Data
@NoArgsConstructor
//宿舍楼
public class Dormitory implements Serializable {
    private static final long serialVersionUID = 1L;
    private Integer d_id;          //ID
    private Integer s_dormitoryid; //宿舍编号
    private String d_dormbuilding;//宿舍楼
    private String d_bedtotal;    //床位总数
    private String d_bed;         //已用床位
    private String a_name;        //管理员
    private List<Student> students; //学生信息

}
