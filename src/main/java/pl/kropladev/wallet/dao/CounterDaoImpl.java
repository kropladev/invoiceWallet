package pl.kropladev.wallet.dao;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;
import pl.kropladev.wallet.model.Counter;

import java.util.List;

/**
 * Created by kropla on 19.11.15.
 */
@Repository("counterDao")
public class CounterDaoImpl extends AbstractDao<Long, Counter> implements  SimpleDao<Counter> {
    private static final Logger logger = LoggerFactory.getLogger(FirmDaoImpl.class);
    public static final String TABLE_NAME = "firm";
    public Counter findById(Long id) {
        return getByKey(id);
    }

    public void saveEntity(Counter entity) {
        logger.debug(entity.toString());
        persist(entity);
    }

    public void deleteEntityById(Long entityId) {
        Query query = getSession().createSQLQuery("delete from "
                + TABLE_NAME
                + " where id = :id");
        query.setLong("id", entityId);
        query.executeUpdate();
    }

    @SuppressWarnings("unchecked")
    public List<Counter> findAllEntities() {
        Criteria criteria = createEntityCriteria();
        return (List<Counter>) criteria.list();
    }

}
