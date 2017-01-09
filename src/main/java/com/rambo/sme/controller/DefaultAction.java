package com.rambo.sme.controller;

import com.google.common.collect.ImmutableList;
import com.rambo.sme.pojo.User;
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
        User user = new User();
        user.setName("orson");
        user.setOrg("it");
        ImmutableList<User> userList = ImmutableList.of(user, user, user, user);

        model.addAttribute("userList", userList);
        httpSession.setAttribute("name", "rambo");
        httpSession.setAttribute("org", "soft");
        return "default";
    }

}