package com.youtube;

import java.sql.Timestamp;
import java.time.Instant;

public class TestFunciton {
    public static void main(String[] args) {

        StringBuilder src = new StringBuilder("09-Oct-2021 15:46:44.523 INFO [main] org.apache.coyote.AbstractProtocol.stop Stopping ProtocolHandler [\"http-nio-8080\"]" +
                "09-Oct-2021 15:46:44.527 INFO [main] org.apache.coyote.AbstractProtocol.destroy Destroying ProtocolHandler [\"http-nio-8080\"]");
        if (src.length() > 48) {
            src.replace(48, src.length() - 1, "");
            src.append("...");
        }
        System.out.println(src);
    }
}
