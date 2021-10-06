package com.youtube.services.impls;

import com.youtube.daos.IHistoryDAO;
import com.youtube.services.IHistoryService;

import javax.inject.Inject;

public class HistoryService implements IHistoryService {

    @Inject
    IHistoryDAO historyDAO;

}
