package com.youtube.services.impls;

import com.youtube.daos.IComInteractDAO;
import com.youtube.entities.ComInteract;
import com.youtube.services.IComInteractService;

import javax.inject.Inject;

public class ComInteractService implements IComInteractService {

    @Inject
    IComInteractDAO comInteractDAO;

    @Override
    public ComInteract findOne(Long userId, Long commentId) {
        return comInteractDAO.findOne(userId, commentId);
    }

    @Override
    public Long insert(ComInteract comInteract) {
        return comInteractDAO.insert(comInteract);
    }

    @Override
    public boolean delete(ComInteract comInteract) {
        return comInteractDAO.delete(comInteractDAO.findOne(comInteract.getUserId(), comInteract.getCommentId()));
    }
}
