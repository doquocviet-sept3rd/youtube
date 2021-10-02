package com.youtube.daos.impls;

import com.youtube.daos.IHistoryDAO;
import com.youtube.entities.History;

import java.util.List;

public class HistoryDAO extends AbstractDAO<History> implements IHistoryDAO {

    private final String className = "History";

    @Override
    public List<History> findAll() {
        return super.findAll(className);
    }

    @Override
    public Long insert(History history) {
        return super.insert(history);
    }

    @Override
    public boolean update(History history) {
        return super.update(history);
    }

    @Override
    public boolean delete(History history) {
        return super.delete(history);
    }

    @Override
    public History findOne(Object... params) {
        return super.findOne(className, params);
    }
}
