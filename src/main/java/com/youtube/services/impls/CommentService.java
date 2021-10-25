package com.youtube.services.impls;

import com.youtube.daos.ICommentDAO;
import com.youtube.entities.Comment;
import com.youtube.services.ICommentService;

import javax.inject.Inject;

public class CommentService implements ICommentService {

    @Inject
    ICommentDAO commentDAO;

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
        return commentDAO.delete(commentDAO.findOne(comment.getId()));
    }

    @Override
    public Comment findOne(Long id) {
        return commentDAO.findOne(id);
    }
}
