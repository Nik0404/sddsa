package com.DAO;

import com.entity.User;

public interface UserDao {
    public boolean userRegister(User us);
    public User userLogin(String email, String password);
}
