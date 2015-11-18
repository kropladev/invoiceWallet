package pl.kropladev.wallet.dao;

/**
 * Created by kropla on 18.11.15.
 */

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;
import pl.kropladev.wallet.model.Firm;

import java.util.List;

@Repository("firmDao")
public class FirmDaoImpl extends AbstractDao<Long, Firm> implements SimpleDao<Firm> {
    private static final Logger logger = LoggerFactory.getLogger(FirmDaoImpl.class);
    public static final String TABLE_NAME = "firm";
    public Firm findById(Long id) {
        return getByKey(id);
    }

    public void saveEntity(Firm entity) {
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
    public List<Firm> findAllEntities() {
        Criteria criteria = createEntityCriteria();
        return (List<Firm>) criteria.list();
    }

}

