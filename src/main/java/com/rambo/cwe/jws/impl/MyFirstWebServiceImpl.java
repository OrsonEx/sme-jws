package com.rambo.cwe.jws.impl;

import com.rambo.cwe.jws.inter.MyFirstWebService;
import org.springframework.stereotype.Component;

import javax.jws.WebService;
import javax.jws.soap.SOAPBinding;


/**
 * 作为测试的WebService实现类
 */
@Component
@WebService(endpointInterface = "com.rambo.cwe.jws.inter.MyFirstWebService")
@SOAPBinding(style = SOAPBinding.Style.RPC)
public class MyFirstWebServiceImpl implements MyFirstWebService {

    public String sayHi(String name) {
        return "Hi, " + name + "! ";
    }
}