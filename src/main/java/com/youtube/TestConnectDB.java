package com.youtube;

import com.youtube.daos.utils.HibernateUtils;
import com.youtube.entities.Category;
import org.hibernate.query.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import java.util.List;

public class TestConnectDB {
    public static void main(String[] args) {

        // Create session factory from hibernateUtils
        SessionFactory factory = HibernateUtils.getSessionFactory();

        // Get session current
        Session session = factory.getCurrentSession();

        try {

            // Begin transaction
            session.getTransaction().begin();

            // Create sql query
            String sql = "select c from Category c";

            // Query data
            @SuppressWarnings("unchecked")
            Query<Category> query = session.createQuery(sql);

            List<Category> categories = query.getResultList();

            // Log data
            for (Category cate : categories) {
                System.out.println("Cate: " + cate.getId() + " : " + cate.getName());
            }

            // Commit database
            session.getTransaction().commit();

            System.out.println("Connected successfully");

        } catch (Exception e) {

            System.out.println("Connect unsuccessfully");

            // Log error
            e.printStackTrace();

            // Rollback if error
            session.getTransaction().rollback();
        }
    }
}