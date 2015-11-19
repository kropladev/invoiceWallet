package pl.kropladev.wallet.dao;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;
import pl.kropladev.wallet.model.CounterState;

import javax.annotation.PostConstruct;

/**
 * Created by kropla on 19.11.15.
 */
@Repository("counterStateDao")
public class CounterStateDao extends AbstractDao<Long, CounterState> {
    private static final Logger logger = LoggerFactory.getLogger(CounterStateDao.class);
    public static final String TABLE_NAME = "counter_states";

    @PostConstruct
    public void init(){
        tableName = TABLE_NAME;
    }
}
