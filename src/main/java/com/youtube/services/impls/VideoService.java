package com.youtube.services.impls;

import com.youtube.daos.IVideoDAO;
import com.youtube.daos.impls.VideoDAO;
import com.youtube.entities.Video;
import com.youtube.services.IVideoService;

import javax.inject.Inject;
import java.util.List;

public class VideoService implements IVideoService {

//    @Inject
    IVideoDAO videoDAO;

    @Override
    public Video findOne(long id) {
        videoDAO = new VideoDAO();
        return videoDAO.findOne(id);
    }

    @Override
    public List<Video> findAll() {
        videoDAO = new VideoDAO();
        return videoDAO.findAll();
    }

}
