package com.youtube.services.impls;

import com.youtube.daos.ICommentDAO;
import com.youtube.services.ICommentService;

import javax.inject.Inject;

public class CommentService implements ICommentService {

    @Inject
    ICommentDAO commentDAO;

}
