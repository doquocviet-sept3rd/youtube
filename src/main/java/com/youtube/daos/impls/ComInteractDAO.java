package com.youtube.daos.impls;

import com.youtube.daos.IComInteractDAO;
import com.youtube.entities.ComInteract;

import java.util.List;

public class ComInteractDAO extends AbstractDAO<ComInteract> implements IComInteractDAO {

    private final String className = "ComInteract";

    @Override
    public List<ComInteract> findAll() {
        return super.findAll(className);
    }

    @Override
    public Long insert(ComInteract comInteract) {
        return super.insert(comInteract);
    }

    @Override
    public boolean update(ComInteract comInteract) {
        return super.update(comInteract);
    }

    @Override
    public boolean delete(ComInteract comInteract) {
        return super.delete(comInteract);
    }

    @Override
    public ComInteract findOne(Object... params) {
        return super.findOne(className, params);
    }
}
