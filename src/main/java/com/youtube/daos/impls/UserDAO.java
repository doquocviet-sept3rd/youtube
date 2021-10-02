package com.youtube.daos.impls;

import com.youtube.daos.IUserDAO;
import com.youtube.entities.User;

import java.util.List;

public class UserDAO extends AbstractDAO<User> implements IUserDAO {

    private final String className = "User";

    @Override
    public List<User> findAll() {
        return super.findAll(className);
    }

    @Override
    public Long insert(User user) {
        return super.insert(user);
    }

    @Override
    public boolean update(User user) {
        return super.update(user);
    }

    @Override
    public boolean delete(User user) {
        return super.delete(user);
    }

    @Override
    public User findOne(Object... params) {
        return super.findOne(className, params);
    }
}
