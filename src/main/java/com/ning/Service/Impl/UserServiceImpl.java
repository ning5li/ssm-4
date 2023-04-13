package com.ning.Service.Impl;

import com.ning.Service.UserService;
import com.ning.bean.User;
import com.ning.mappers.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;


    //查询是否存在该用户
    public User checkUser(User user){

        return userMapper.checkUser(user);
    }

    //增加用户
    public void addUser(User user) {

        userMapper.addUser(user);
    }

    //根据邮箱名查询用户
    public User checkByEmail(String email) {

        return userMapper.checkByEmail(email);
    }
}
