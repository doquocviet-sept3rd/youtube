package com.youtube.daos.impls;

import com.youtube.daos.ICategoryDAO;
import com.youtube.entities.Category;

import java.util.List;

public class CategoryDAO extends AbstractDAO<Category> implements ICategoryDAO {

    private final String className = "Category";

    @Override
    public List<Category> findAll() {
        return super.findAll(className);
    }

    @Override
    public Long insert(Category category) {
        return super.insert(category);
    }

    @Override
    public boolean update(Category category) {
        return super.update(category);
    }

    @Override
    public boolean delete(Category category) {
        return super.delete(category);
    }

    @Override
    public Category findOne(Object... params) {
        return super.findOne(className, params);
    }
}
