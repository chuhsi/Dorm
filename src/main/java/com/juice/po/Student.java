package com.juice.po;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
//学生
public class Student {
    private static final long serialVersionUID = 1L;
    private Integer s_id;          //ID
    private Integer s_studentid;   //学号
    private String s_name;        //姓名
    private String s_sex;         //性别
    private Integer s_age;        //年龄
    private String s_phone;      //电话
    private Integer s_classid;    //班级编号
    private String s_classname;    //班级
    private Integer s_dormitoryid;//寝室编号

}
