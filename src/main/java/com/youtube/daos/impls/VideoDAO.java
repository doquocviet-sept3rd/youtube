package com.youtube.daos.impls;

import com.youtube.daos.IVideoDAO;
import com.youtube.daos.utils.HibernateUtils;
import com.youtube.entities.Video;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;

import java.sql.Timestamp;
import java.time.Instant;
import java.util.ArrayList;
import java.util.List;

public class VideoDAO extends AbstractDAO<Video> implements IVideoDAO {

    private final String className = "Video";

    // Get session factory
    SessionFactory factory = HibernateUtils.getSessionFactory();
    public List<Video> searchByName(String txtSearch) {
        // Get session current
        Session session = factory.getCurrentSession();
        String hql = "from Video where name like :keyword";
        String keyword =txtSearch;

        try
        {
            // Begin transaction
            session.getTransaction().begin();

            @SuppressWarnings("unchecked")
            Query query = session.createQuery(hql);
            query.setParameter("keyword", "%" + keyword + "%");
            List<Video> videoList=query.list();


            // Commit into database
            session.getTransaction().commit();
            System.out.println(keyword);

            return videoList;
        }
        catch (Exception e) {

            // Log error
            e.printStackTrace();

            // Rollback if error
            session.getTransaction().rollback();
        } finally {

            // Close transaction
            // factory.close();
            session.close();
        }
        return null;
    }

    @Override
    public List<Video> findAll() {
        return super.findAll(className);
    }

    @Override
    public Long insert(Video video) {
        video.setCreatedOn(Timestamp.from(Instant.now()));
        video.setModifiedOn(Timestamp.from(Instant.now()));
        return super.insert(video);
    }

    @Override
    public boolean update(Video video) {
        video.setModifiedOn(Timestamp.from(Instant.now()));
        return super.update(video);
    }

    @Override
    public boolean delete(Video video) {
        return super.delete(video);
    }

    @Override
    public Video findOne(Object... params) {
        return super.findOne(className, params);
    }
}
