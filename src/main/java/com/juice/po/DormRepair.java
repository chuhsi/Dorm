package com.juice.po;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

/**
 * @program: dormitorySystem
 * @description: 维修登记
 * @author: com.juice
 **/

@Data
@NoArgsConstructor
//维修登记
public class DormRepair {
    private int r_id;               //ID
    private int d_id;               //宿舍编号
    private String d_dormbuilding;  //宿舍楼
    private String r_name;          //维修人员
    private String reason;          //报修事由
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private Date create_time;       //报修时间
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private Date update_time;       //更新时间

}

