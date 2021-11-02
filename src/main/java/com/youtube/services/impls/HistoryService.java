package com.youtube.services.impls;

import com.youtube.daos.IHistoryDAO;
import com.youtube.services.IHistoryService;
import com.youtube.entities.History;

import javax.inject.Inject;

public class HistoryService implements IHistoryService {

    @Inject
    private IHistoryDAO historyDAO;

    @Override
    public Long insert(History history) {
        return historyDAO.insert(history);
    }

}
