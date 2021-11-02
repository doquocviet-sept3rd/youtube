package com.youtube;

import com.youtube.daos.impls.VideoDAO;
import com.youtube.entities.Comment;

import java.io.IOException;
import java.util.*;
import java.util.stream.Collectors;


public class TestFunciton {

//    @Inject
//    IComInteractService comInteractService;

    public static void main(String[] args) throws IOException {

//        ComInteractService comInteractService = new ComInteractService();
//        CommentDAO commentDAO = new CommentDAO();
//        ComInteractDAO comInteractDAO = new ComInteractDAO();
//        ComInteract comInteractDB = comInteractDAO.findOne(Long.parseLong("15"), Long.parseLong("56"));
//        System.out.println(comInteractDB.getUserId());


//        VideoService videoService = new VideoService();
        VideoDAO videoDAO = new VideoDAO();

//        .stream().sorted(Comparator.comparing(Comment::getTime)).collect(Collectors.toList())
//        Collection<Comment> src = videoDAO.findOne(Long.parseLong("1")).getComments().stream().sorted(Comparator.comparing(Comment::getTime)).collect(Collectors.toList());
//        Collections.reverse(Arrays.asList(src.toArray()));
//        for(Comment comment : src) {
//            System.out.println(comment.getTime());
//        }

//        List<Comment> comments = new ArrayList<>(videoDAO.findOne(Long.parseLong("1")).getComments());
//        comments.sort(Comparator.comparing(Comment::getTime));
//        Collections.reverse(comments);
//        for (Comment comment : comments) {
//            System.out.println(comment.getTime());
//        }

//        StringBuilder keys = new StringBuilder("viet@gmail.com");
//
//        System.out.println(keys.replace(keys.indexOf("@"), keys.length(), ""));


        String content = "noi di la di vay sao/nMac ke nươc mat roi";
        String begin = "<p>";
        String end = "</p>";
        boolean isClose = false;
        StringBuilder result = new StringBuilder();
        result.append(begin);
        for (int i = 0; i < content.length() - 2; i++) {
            if (content.charAt(i) == '/' && content.charAt(i + 1) == 'n') {
                result.append(end);
                isClose = true;
                if (!String.valueOf(content.charAt(i + 2)).isEmpty()) {
                    result.append(begin);
                    isClose = false;
                }
                i++;
            } else {
                result.append(content.charAt(i));
            }
        }
        if (!isClose) {
            result.append(end);
        }
        System.out.println(result.toString());
    }
}
