package pl.kropladev.wallet.dao;

import org.springframework.stereotype.Repository;
import pl.kropladev.wallet.model.CounterTypes;

import javax.annotation.PostConstruct;

/**
 * Created by kropla on 19.11.15.
 */
@Repository("counterTypeDao")
public class CounterTypeDao extends AbstractDao<Long, CounterTypes> {
    public static final String TABLE_NAME = "counter_types";

    @PostConstruct
    public void init(){
        tableName = TABLE_NAME;
    }
}
