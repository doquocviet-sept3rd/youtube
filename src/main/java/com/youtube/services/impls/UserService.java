package com.youtube.services.impls;

import com.youtube.daos.IUserDAO;
import com.youtube.entities.User;
import com.youtube.services.IUserService;

import javax.inject.Inject;

public class UserService implements IUserService {

    @Inject
    private IUserDAO userDAO;

    @Override
    public Long insert(User user) {
        return userDAO.insert(user);
    }

    @Override
    public User findOne(Long id) {
        return userDAO.findOne(id);
    }

    @Override
    public boolean isExistEmail(String email) {
        return userDAO.isExixtEmail(email);
    }

    @Override
    public User findOneByEmail(String email) {
        return userDAO.findOneByEmail(email);
    }

    @Override
    public boolean update(User user) {
        return userDAO.update(user);
    }
}
