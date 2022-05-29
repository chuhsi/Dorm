package com.juice.po;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

/**
 * @program: dormitorySystem
 * @description: 访客
 * @author: com.juice
 **/

@Data
@NoArgsConstructor
//访客
public class Visitor {
    private Integer v_id;           //ID
    private String v_name;          //访客姓名
    private Integer v_phone;        //访客电话
    private Integer v_dormitoryid;  //访问宿舍编号
    private String v_dormbuilding;  //访问宿舍楼
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private Date create_time;       //访问时间
}

