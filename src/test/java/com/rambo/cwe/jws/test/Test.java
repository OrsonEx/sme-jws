package com.rambo.cwe.jws.test;

import com.rambo.cwe.jws.client.UserService;
import com.rambo.cwe.jws.client.UserServiceImplService;

import java.net.URL;

/**
 * Create by Rambo on 2016/9/7
 **/
public class Test {
    public static void main(String[] args) throws Exception {
        //Endpoint.publish("http://localhost:7005/cwe/ws/UserService", new UserServiceImpl());

        String url = "http://localhost:8089/services/UserService?wsdl";
        UserServiceImplService serviceImplService = new UserServiceImplService(new URL(url));
        UserService serviceImplPort = serviceImplService.getUserServiceImplPort();
        System.out.println(serviceImplPort.sayHi("orson"));
    }
}