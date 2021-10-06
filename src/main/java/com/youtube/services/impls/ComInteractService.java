package com.youtube.services.impls;

import com.youtube.daos.IComInteractDAO;
import com.youtube.services.IComInteractService;

import javax.inject.Inject;

public class ComInteractService implements IComInteractService {

    @Inject
    IComInteractDAO comInteractDAO;

}
