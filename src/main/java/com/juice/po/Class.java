package com.juice.po;

import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@NoArgsConstructor
//班级
public class Class {
    private Integer c_id;          //班级ID
    private Integer c_classid;     //班级编号
    private String c_classname;   //搬家名字
    private String c_counsellor;  //班级辅导员
    //班级与学生为一对多关系，使用链表
    private List<Student> students;

}
