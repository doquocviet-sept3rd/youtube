package com.youtube.daos.impls;

import com.youtube.daos.IVideoDAO;
import com.youtube.entities.Video;

import java.util.List;

public class VideoDAO extends AbstractDAO<Video> implements IVideoDAO {

    private final String className = "Video";

    @Override
    public List<Video> findAll() {
        return super.findAll(className);
    }

    @Override
    public Long insert(Video video) {
        return super.insert(video);
    }

    @Override
    public boolean update(Video video) {
        return super.update(video);
    }

    @Override
    public boolean delete(Video video) {
        return super.delete(video);
    }

    @Override
    public Video findOne(Object... params) {
        return super.findOne(className, params);
    }
}
