package com.youtube.services;

import com.youtube.entities.Video;

import java.util.List;

public interface IVideoService {

    Video findOne(long id);

    List<Video> findAll();

    String converNumberToString(long number);

    String converNumberToHaveDot(long number);
}
