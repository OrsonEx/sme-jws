package com.rambo.cwe.jws.impl;

import com.rambo.cwe.jws.inter.UserService;
import org.springframework.stereotype.Component;

import javax.jws.WebService;


/**
 * 作为测试的WebService实现类
 */
//该对象交由spring管理，studentWsService即为该实现类在bean容器中的name
@Component("userServiceImpl")
@WebService(serviceName = "UserService", endpointInterface = "com.rambo.cwe.jws.inter.UserService")
public class UserServiceImpl implements UserService {

    public String sayHi(String name) {
        return "Hi, " + name + "! ";
    }
}