package com.youtube.services.impls;

import com.youtube.daos.IUserDAO;
import com.youtube.entities.User;
import com.youtube.services.IUserService;

import javax.inject.Inject;
import java.util.List;

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
        List<User> users = userDAO.findAll();
        for (User user : users) {
            if (user.getEmail().equals(email)) {
                return true;
            }
        }
        return false;
    }

    @Override
    public User findOneByEmail(String email) {
        List<User> users = userDAO.findAll();
        for (User user : users) {
            if (user.getEmail().equals(email)) {
                return user;
            }
        }
        return null;
    }

    @Override
    public boolean update(User user) {
        return userDAO.update(user);
    }
}
