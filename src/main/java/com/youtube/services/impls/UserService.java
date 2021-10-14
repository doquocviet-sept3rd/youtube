package com.youtube.services.impls;

import com.youtube.daos.IUserDAO;
import com.youtube.entities.User;
import com.youtube.services.IUserService;

import javax.inject.Inject;

public class UserService implements IUserService {

    @Inject
    IUserDAO userDAO;

    @Override
    public Long insert(User user) {
        return userDAO.insert(user);
    }
}
