package com.youtube.services;

import com.youtube.entities.Video;

import java.util.List;

public interface IVideoService {

    Video findOne(long id);

    List<Video> findAll();

    boolean isLikedByUser(long videoId, long userId);

    boolean isDislikedByUser(long videoId, long userId);

}
