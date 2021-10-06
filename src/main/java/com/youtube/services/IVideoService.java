package com.youtube.services;

import com.youtube.entities.Video;

public interface IVideoService {

    Video findOne(long id);

}
