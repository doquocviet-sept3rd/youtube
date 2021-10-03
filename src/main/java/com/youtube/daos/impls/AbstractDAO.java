package com.youtube.daos.impls;

import com.youtube.daos.GenericDAO;
import com.youtube.daos.utils.HibernateUtils;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;

import java.io.Serializable;
import java.util.List;

public class AbstractDAO<Entity> implements GenericDAO<Entity> {

    SessionFactory factory = HibernateUtils.getSessionFactory();

    @Override /* Find all entity from database */
    public List<Entity> findAll(String className) {

        // Get session current
        Session session = factory.getCurrentSession();

        try {

            // Begin transaction
            session.getTransaction().begin();

            // Query
            @SuppressWarnings("unchecked")
            Query<Entity> query = session.createQuery("from " + className);

            // Commit into database
            session.getTransaction().commit();
            System.out.println("Found All Successfully");

            return query.list();

        } catch (Exception e) {

            // Log error
            e.printStackTrace();

            // Rollback if error
            session.getTransaction().rollback();

        } finally {

            // Close transaction
            factory.close();
            session.close();

        }
        return null;
    }

    @Override /* Insert entity into database */
    public Long insert(Entity entity) {

        // Get session current
        Session session = factory.getCurrentSession();

        // Entity's id after inserted successfully
        Serializable id;

        try {

            // Begin transaction
            session.getTransaction().begin();

            // Get id after insert
            id = session.save(entity);

            // Commit into database
            session.getTransaction().commit();
            System.out.println("Inserted Successfully");

            // Return Entity's id after inserted successfully
            return (Long) id;

        } catch (Exception e) {

            // Log error
            e.printStackTrace();

            // Rollback if error
            session.getTransaction().rollback();

        } finally {

            // Close transaction
            factory.close();
            session.close();

        }
        // Return null if error
        return null;
    }

    @Override /* Update entity in database */
    public boolean update(Entity entity) {

        // Get session current
        Session session = factory.getCurrentSession();

        try {

            // Begin transaction
            session.getTransaction().begin();

            // Update entity
            session.update(entity);

            // Commit into database
            session.getTransaction().commit();
            System.out.println("Updated Successfully");

            // Return true if updated successfully
            return true;

        } catch (Exception e) {

            // Log error
            e.printStackTrace();

            // Rollback if error
            session.getTransaction().rollback();

        } finally {

            // Close transaction
            factory.close();
            session.close();
        }
        // Return false if update error
        return false;
    }

    @Override /* Delete entity in database */
    public boolean delete(Entity entity) {

        // Get session current
        Session session = factory.getCurrentSession();

        try {

            // Begin transaction
            session.getTransaction().begin();

            // Delete entity
            session.delete(entity);

            // Commit into database
            session.getTransaction().commit();
            System.out.println("Deleted Successfully");

            // Return true if deleted successfully
            return true;

        } catch (Exception e) {

            // Log error
            e.printStackTrace();

            // Rollback if error
            session.getTransaction().rollback();

        } finally {

            // Close transaction
            factory.close();
            session.close();

        }
        // Return false if delete error
        return false;
    }

    @Override /* Find entity by primary key */
    public Entity findOne(String className, Object... params) {

        // Get session current
        Session session = factory.getCurrentSession();

        try {

            // Begin transaction
            session.getTransaction().begin();

            // Return entity if contains id
            if (params.length == 1) {
                @SuppressWarnings("unchecked")
                Entity entity = (Entity) session.load(className, params);
                return entity;
            }

            // Init string query
            String sql = getSqlParameter(className, params);

            // Create query
            @SuppressWarnings("unchecked")
            Query<Entity> query = session.createQuery(sql);

            // Return entity (single)
            return query.getSingleResult();

        } catch (Exception e) {

            // Log error
            e.printStackTrace();

            // Rollback if error
            session.getTransaction().rollback();

        } finally {

            // Close transaction
            factory.close();
            session.close();

        }
        // Return null if error or not found
        return null;
    }

    /* Init string sql */
    public String getSqlParameter(String className, Object... params) {

        StringBuilder sql = new StringBuilder("select entity from " + className + " entity where ");

        String[] keys = new String[2];
        switch (className) {
            case "Subscribe": {
                keys[0] = "userId";
                keys[1] = "userIdSub";
                break;
            }
            case "ComInteract": {
                keys[0] = "userId";
                keys[1] = "commentId";
                break;
            }
            case "VidInteract": {
                keys[0] = "userId";
                keys[1] = "videoId";
                break;
            }
            default: {
                // do not things
            }
        }

        for (int i = 0; i < keys.length; i++) {
            sql.append("entity.").append(keys[i]).append(" = ").append(params[i]).append(" and ");
        }

        return sql.toString();
    }
}
