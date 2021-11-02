package com.youtube.services.impls;

import com.youtube.daos.ICommentDAO;
import com.youtube.entities.ComInteract;
import com.youtube.entities.Comment;
import com.youtube.entities.VidInteract;
import com.youtube.entities.Video;
import com.youtube.services.ICommentService;

import javax.inject.Inject;
import java.util.Collection;

public class CommentService implements ICommentService {

    @Inject
    private ICommentDAO commentDAO;

    @Override
    public Long insert(Comment comment) {
        return commentDAO.insert(comment);
    }

    @Override
    public boolean update(Comment comment) {
        return commentDAO.update(comment);
    }

    @Override
    public boolean delete(Comment comment) {
        return commentDAO.delete(comment);
    }

    @Override
    public Comment findOne(Long id) {
        return commentDAO.findOne(id);
    }

    @Override
    public boolean isLikedByUser(long commentId, long userId) {
        Comment comment = commentDAO.findOne(commentId);
        Collection<ComInteract> comInteracts = comment.getComInteracts();
        if (comInteracts != null) {
            for (ComInteract comInteract : comInteracts) {
                if (comInteract.getUserId() == userId) {
                    if (comInteract.getIsLike()) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    @Override
    public boolean isDislikedByUser(long commentId, long userId) {
        Comment comment = commentDAO.findOne(commentId);
        Collection<ComInteract> comInteracts = comment.getComInteracts();
        if (comInteracts != null) {
            for (ComInteract comInteract : comInteracts) {
                if (comInteract.getUserId() == userId) {
                    if (!comInteract.getIsLike()) {
                        return true;
                    }
                }
            }
        }
        return false;
    }
}
