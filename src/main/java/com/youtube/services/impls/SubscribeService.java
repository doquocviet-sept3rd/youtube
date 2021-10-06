package com.youtube.services.impls;

import com.youtube.daos.ISubscribeDAO;
import com.youtube.services.ISubscribeService;

import javax.inject.Inject;

public class SubscribeService implements ISubscribeService {

    @Inject
    ISubscribeDAO iSubscribeDAO;

}
