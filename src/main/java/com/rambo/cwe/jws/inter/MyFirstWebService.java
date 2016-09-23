package com.rambo.cwe.jws.inter;

import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebService;
import javax.jws.soap.SOAPBinding;

/**
 * 作为测试的WebService接口
 */
@WebService
@SOAPBinding(style = SOAPBinding.Style.RPC)
public interface MyFirstWebService {

    /**
     * 执行测试的WebService方法(有参)
     */
    @WebMethod
    String sayHi(@WebParam(name = "name") String name);

}