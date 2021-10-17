package com.youtube.services;

import com.youtube.entities.Comment;

public interface ICommentService {

    Long insert(Comment comment);

    boolean update(Comment comment);

    boolean delete(Comment comment);

}
