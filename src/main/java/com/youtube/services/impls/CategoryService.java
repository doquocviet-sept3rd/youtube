package com.youtube.services.impls;

import com.youtube.daos.ICategoryDAO;
import com.youtube.services.ICategoryService;

import javax.inject.Inject;

public class CategoryService implements ICategoryService {

    @Inject
    ICategoryDAO categoryDAO;

}
