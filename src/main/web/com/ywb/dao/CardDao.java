package com.ywb.dao;

import com.ywb.pojo.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CardDao {
    void add(User rc);
    void del(Integer id);
    void update(User user);
    List<User> getAll();
    User selectById(Integer id);
    User selectByName(String name);
//    使用mybatis传参数时(两种方法），一种为在mapper的接口中给该方法的参数加上@Param(value = "number_online")
    User selectByNumber(@Param(value = "number_online") int number);
    int count();
}
