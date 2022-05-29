package com.juice.po;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
//管理员
public class Admin {
    private Integer a_id;          //管理员
    private String a_username;    //用户名(账号)

    private String a_password;    //管理员密码
    private String a_name;        //管理员名字
    private Integer a_phone;       //电话号码

    private Integer a_power;       //管理员级别
    private String a_describe;    //级别描述

}
