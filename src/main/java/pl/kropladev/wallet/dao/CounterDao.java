package pl.kropladev.wallet.dao;

import org.hibernate.Query;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;
import pl.kropladev.wallet.model.Counter;

/**
 * Created by kropla on 19.11.15.
 */
@Repository("counterDao")
public class CounterDao extends AbstractDao<Long, Counter> {
    private static final Logger logger = LoggerFactory.getLogger(FirmDao.class);
    public static final String TABLE_NAME = "firm";



    @Override
    public void deleteEntityById(Long entityId) {
        Query query = getSession().createSQLQuery("delete from "
                + TABLE_NAME
                + " where id = :id");
        query.setLong("id", entityId);
        query.executeUpdate();
    }



}
