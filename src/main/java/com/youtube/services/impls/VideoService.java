package com.youtube.services.impls;

import com.youtube.daos.IVideoDAO;
import com.youtube.entities.VidInteract;
import com.youtube.entities.Video;
import com.youtube.services.IVideoService;

import javax.inject.Inject;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;

public class VideoService implements IVideoService {

    @Inject
    private IVideoDAO videoDAO;

    @Override
    public Video findOne(long id) {
        return videoDAO.findOne(id);
    }

    @Override
    public List<Video> findAll() {
        return videoDAO.findAll();
    }

    @Override
    public boolean isLikedByUser(long videoId, long userId) {
        Video video = videoDAO.findOne(videoId);
        Collection<VidInteract> vidInteracts = video.getVidInteracts();
        if (vidInteracts != null) {
            for (VidInteract vidInteract : vidInteracts) {
                if (vidInteract.getUserId() == userId) {
                    if (vidInteract.getIsLike()) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    @Override
    public boolean isDislikedByUser(long videoId, long userId) {
        Video video = videoDAO.findOne(videoId);
        Collection<VidInteract> vidInteracts = video.getVidInteracts();
        if (vidInteracts != null) {
            for (VidInteract vidInteract : vidInteracts) {
                if (vidInteract.getUserId() == userId) {
                    if (!vidInteract.getIsLike()) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    @Override
    public boolean update(Video video) {
        return videoDAO.update(video);
    }

    @Override
    public List<String> formatXML(String content) {
        return Arrays.asList(content.split("`"));
    }
}
