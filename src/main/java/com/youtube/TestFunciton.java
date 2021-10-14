package com.youtube;

import com.youtube.daos.IUserDAO;
import com.youtube.daos.impls.UserDAO;
import com.youtube.entities.User;


public class TestFunciton {


    public static void main(String[] args) {

        UserDAO userDAO = new UserDAO();

        User user = new User();
        user.setName("Việt Đỗ Quốc - test");
        user.setAvatarUrl("Avatar url - test");
        user.setEmail("1223@gmail.com");

        Long id = userDAO.insert(user);
        System.out.println(id);

    }
}
