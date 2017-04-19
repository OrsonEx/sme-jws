package com.rambo.sme.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

/**
 * Create by Rambo on 2016/8/3
 **/
@Controller
@RequestMapping("/default")
public class DefaultAction {
    private static Logger logger = Logger.getLogger(DefaultAction.class);

    @RequestMapping("/skip")
    public String test1(Model model, HttpSession httpSession) {

        return "default";
    }

}