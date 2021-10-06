package com.youtube.services.impls;

import com.youtube.daos.IUserDAO;
import com.youtube.services.IUserService;

import javax.inject.Inject;

public class UserService implements IUserService {

    @Inject
    IUserDAO userDAO;

}
