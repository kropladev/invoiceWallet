package pl.kropladev.wallet.dao;

/**
 * Created by kropla on 17.11.15.
 */
import java.io.Serializable;

import java.lang.reflect.ParameterizedType;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import pl.kropladev.wallet.model.Counter;

public abstract class AbstractDao<PK extends Serializable, T> implements SimpleDao<T> {

    protected String tableName;
    private final Class<T> persistentClass;

    @SuppressWarnings("unchecked")
    public AbstractDao(){
        this.persistentClass =(Class<T>) ((ParameterizedType) this.getClass().getGenericSuperclass()).getActualTypeArguments()[1];
    }

    @Autowired
    private SessionFactory sessionFactory;

    protected Session getSession(){
        return sessionFactory.getCurrentSession();
    }

    @SuppressWarnings("unchecked")
    public T getByKey(PK key) {
        return (T) getSession().get(persistentClass, key);
    }

    public void persist(T entity) {
        getSession().persist(entity);
    }

    public void delete(T entity) {
        getSession().delete(entity);
    }

    protected Criteria createEntityCriteria(){
        return getSession().createCriteria(persistentClass);
    }


    public T findById(PK id) {
        return getByKey(id);
    }

    public void saveEntity(T entity) {
        persist(entity);
    }

   // public abstract void deleteEntityById(PK entityId);

    public void deleteEntityById(Long entityId) {
        Query query = getSession().createSQLQuery("delete from "
                + tableName
                + " where id = :id");
        query.setLong("id", entityId);
        query.executeUpdate();
    }

    @SuppressWarnings("unchecked")
    public List<T> findAllEntities() {
        Criteria criteria = createEntityCriteria();
        return (List<T>) criteria.list();
    }

}