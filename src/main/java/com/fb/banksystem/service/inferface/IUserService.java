package com.fb.banksystem.service.inferface;

import com.fb.banksystem.model.User;

public interface IUserService {
    public int deleteByPrimaryKey(Integer user_id);

    public int insert(User record);

    public int insertSelective(User record);

    public User selectByPrimaryKey(Integer user_id);

    public int updateByPrimaryKeySelective(User record);

    public int updateByPrimaryKey(User record);
}
