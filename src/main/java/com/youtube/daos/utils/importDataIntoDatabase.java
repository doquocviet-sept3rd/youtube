package com.youtube.daos.utils;

import com.youtube.daos.IVideoDAO;
import com.youtube.daos.impls.VideoDAO;
import com.youtube.entities.Video;

import java.sql.Timestamp;

public class importDataIntoDatabase {

    public static void main(String[] args) {

        Video video1 = new Video(
                "Chill Nhẹ Với Những Bản Lofi Freak D Mix Nhẹ Nhàng Tâm Trạng - Nhạc Lofi Việt Buồn Gây Nghiện 2021",
                "https://www.youtube.com/embed/G7w3L0wppWQ",
                1000000,
                Timestamp.valueOf("2018-09-01 09:01:15"),
                "#lofi #chill #lofi2021",
                "Chill Nhẹ Với Những Bản Lofi Freak D Mix Nhẹ Nhàng Tâm Trạng -  Nhạc Lofi Việt Buồn Gây Nghiện 2021",
                100000,
                10000,
                "https://i.ytimg.com/vi/QwBo7_1n8F4/hqdefault.jpg?sqp=-oaymwEbCKgBEF5IVfKriqkDDggBFQAAiEIYAXABwAEG&rs=AOn4CLDzobGyzZ4UhFDtW_nP9E-267Qw-A",
                60 * 4,
                1,
                2
        );

        Video video2 = new Video(
                "Chill Nhẹ Với Những Bản Lofi Freak D Mix Nhẹ Nhàng Tâm Trạng - Nhạc Lofi Việt Buồn Gây Nghiện 2021",
                "https://www.youtube.com/embed/G7w3L0wppWQ",
                1000000,
                Timestamp.valueOf("2018-09-01 09:01:15"),
                "#lofi #chill #lofi2021",
                "Chill Nhẹ Với Những Bản Lofi Freak D Mix Nhẹ Nhàng Tâm Trạng -  Nhạc Lofi Việt Buồn Gây Nghiện 2021",
                100000,
                10000,
                "https://i.ytimg.com/vi/QwBo7_1n8F4/hqdefault.jpg?sqp=-oaymwEbCKgBEF5IVfKriqkDDggBFQAAiEIYAXABwAEG&rs=AOn4CLDzobGyzZ4UhFDtW_nP9E-267Qw-A",
                60 * 4,
                1,
                2
        );

        IVideoDAO videoDAO = new VideoDAO();
        videoDAO.insert(video1);
        videoDAO.insert(video2);

    }

}
