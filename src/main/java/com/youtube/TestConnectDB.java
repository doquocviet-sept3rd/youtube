package com.youtube;

import com.youtube.daos.utils.HibernateUtils;
import com.youtube.entities.Category;
import org.hibernate.query.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import java.util.List;

public class TestConnectDB {
    public static void main(String[] args) {
        SessionFactory factory = HibernateUtils.getSessionFactory();

        Session session = factory.getCurrentSession();

        try {
            session.getTransaction().begin();

            String sql = "select c from Category c";

            Query<Category> query = session.createQuery(sql);

            List<Category> categories = query.getResultList();

            for (Category cate : categories) {
                System.out.println("Cate: " + cate.getId() + " : " + cate.getName());
            }

            session.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
            session.getTransaction().rollback();
        }
    }
}