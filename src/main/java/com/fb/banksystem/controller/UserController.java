package com.fb.banksystem.controller;

import com.fb.banksystem.model.User;
import com.fb.banksystem.service.inferface.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/hello")
public class UserController {

    @Autowired
    IUserService userService;

    @RequestMapping("/people")
    @ResponseBody
    public User people(User record){
        return  userService.selectByPrimaryKey(record.getUser_id());
    }

}
