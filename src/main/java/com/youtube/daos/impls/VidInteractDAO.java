package com.youtube.daos.impls;

import com.youtube.daos.IVidInteractDAO;
import com.youtube.entities.VidInteract;

import java.util.List;

public class VidInteractDAO extends AbstractDAO<VidInteract> implements IVidInteractDAO {

    private final String className = "VidInteract";

    @Override
    public List<VidInteract> findAll() {
        return super.findAll(className);
    }

    @Override
    public Long insert(VidInteract vidInteract) {
        return super.insert(vidInteract);
    }

    @Override
    public boolean update(VidInteract vidInteract) {
        return super.update(vidInteract);
    }

    @Override
    public boolean delete(VidInteract vidInteract) {
        return super.delete(vidInteract);
    }

    @Override
    public VidInteract findOne(Object... params) {
        return super.findOne(className, params);
    }
}
