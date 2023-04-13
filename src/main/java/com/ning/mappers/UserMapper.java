package com.ning.mappers;

import com.ning.bean.User;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;


public interface UserMapper {

    //查询是否存在该用户
    User checkUser(User user);

    //增加用户
    void addUser(User user);

    //根据邮箱名查询用户
    User checkByEmail(String email);


}
