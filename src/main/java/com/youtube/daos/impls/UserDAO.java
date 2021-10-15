package com.youtube.daos.impls;

import com.youtube.daos.IUserDAO;
import com.youtube.entities.User;

import java.sql.Timestamp;
import java.time.Instant;
import java.util.List;

public class UserDAO extends AbstractDAO<User> implements IUserDAO {

    private final String className = "User";

    @Override
    public List<User> findAll() {
        return super.findAll(className);
    }

    @Override
    public Long insert(User user) {
        user.setCreatedOn(Timestamp.from(Instant.now()));
        user.setModifiedOn(Timestamp.from(Instant.now()));
        return super.insert(user);
    }

    @Override
    public boolean update(User user) {
        user.setModifiedOn(Timestamp.from(Instant.now()));
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

    @Override
    public boolean isExixtEmail(String email) {
        List<User> users = this.findAll();
        for (User user : users) {
            if (user.getEmail().equals(email)) {
                return true;
            }
        }
        return false;
    }

    @Override
    public User findOneByEmail(String email) {
        List<User> users = this.findAll();
        for (User user : users) {
            if (user.getEmail().equals(email)) {
                return user;
            }
        }
        return null;
    }
}
