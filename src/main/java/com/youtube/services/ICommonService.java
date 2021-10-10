package com.youtube.services;

import java.sql.Timestamp;

public interface ICommonService {

    String convertNumberToString(long number);

    String convertNumberToDot(long number);

    String convertTimestampToString(Timestamp timestamp);

    String distanceOfDateToNow(Timestamp timestamp);

    String cutString(String src);
}
