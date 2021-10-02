package com.youtube.daos.impls;

import com.youtube.daos.ISubscribeDAO;
import com.youtube.entities.Subscribe;

import java.util.List;

public class SubscribeDAO extends AbstractDAO<Subscribe> implements ISubscribeDAO {

    private final String className = "Subscribe";

    @Override
    public List<Subscribe> findAll() {
        return super.findAll(className);
    }

    @Override
    public Long insert(Subscribe subscribe) {
        return super.insert(subscribe);
    }

    @Override
    public boolean update(Subscribe subscribe) {
        return super.update(subscribe);
    }

    @Override
    public boolean delete(Subscribe subscribe) {
        return super.delete(subscribe);
    }

    @Override
    public Subscribe findOne(Object... params) {
        return super.findOne(className, params);
    }
}
