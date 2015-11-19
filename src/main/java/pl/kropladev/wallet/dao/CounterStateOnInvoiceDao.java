package pl.kropladev.wallet.dao;

import org.springframework.stereotype.Repository;
import pl.kropladev.wallet.model.CounterStateOnInvoice;

import javax.annotation.PostConstruct;

/**
 * Created by kropla on 19.11.15.
 */
@Repository("counterStateOnInvoiceDao")
public class CounterStateOnInvoiceDao extends AbstractDao<Long,CounterStateOnInvoice>{
    public static final String TABLE_NAME = "counter_inv_states";

    @PostConstruct
    public void init() {
        tableName = TABLE_NAME;
    }
}
