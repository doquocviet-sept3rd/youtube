package com.youtube.services.impls;

import com.youtube.daos.IVidInteractDAO;
import com.youtube.services.IVidInteractService;

import javax.inject.Inject;

public class VidInteractService implements IVidInteractService {

    @Inject
    IVidInteractDAO vidInteractDAO;

}
