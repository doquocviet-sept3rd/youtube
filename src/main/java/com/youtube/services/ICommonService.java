package com.youtube.services;

import java.sql.Timestamp;

public interface ICommonService {

    String formatNumber(long number);

    String addFPoint(long number);

    String formatTime(Timestamp timestamp);

    String distanceTime(Timestamp timestamp);

    String formatString(String src);
}
