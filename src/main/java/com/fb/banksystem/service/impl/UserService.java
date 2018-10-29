package com.fb.banksystem.service.impl;

import com.fb.banksystem.dao.UserMapper;
import com.fb.banksystem.model.User;
import com.fb.banksystem.service.inferface.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService implements IUserService {
    @Autowired
    UserMapper mappper;

    @Override
    public int deleteByPrimaryKey(Integer user_id) {
        return mappper.deleteByPrimaryKey(user_id);
    }

    @Override
    public int insert(User record) {
        return mappper.insert(record);
    }

    @Override
    public int insertSelective(User record) {
        return mappper.insertSelective(record);
    }

    @Override
    public User selectByPrimaryKey(Integer user_id) {
        return mappper.selectByPrimaryKey(user_id);
    }

    @Override
    public int updateByPrimaryKeySelective(User record) {
        return mappper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(User record) {
        return mappper.updateByPrimaryKey(record);
    }
}
