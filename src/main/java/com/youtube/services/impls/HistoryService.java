package com.youtube.services.impls;

import com.youtube.daos.IHistoryDAO;
import com.youtube.daos.IUserDAO;
import com.youtube.entities.User;
import com.youtube.services.IHistoryService;
import com.youtube.entities.History;

import javax.inject.Inject;
import java.util.ArrayList;
import java.util.Collection;

public class HistoryService implements IHistoryService {

    @Inject
    private IHistoryDAO historyDAO;

    @Override
    public Long insert(History history) {
        return historyDAO.insert(history);
    }

    @Override
    public Collection<History> findAllByUser(Long id) {
        Collection<History> histories = new ArrayList<>();
        for (History history : historyDAO.findAll()) {
            if (history.getUserId() == id) {
                histories.add(history);
            }
        }
        return histories;
    }

}
