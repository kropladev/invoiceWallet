package pl.kropladev.wallet.dao;

import org.springframework.stereotype.Repository;
import pl.kropladev.wallet.model.Firm;

import javax.annotation.PostConstruct;

/**
 * Created by kropla on 18.11.15.
 */
@Repository("firmDao")
public class FirmDao extends AbstractDao<Long, Firm> {
    public static final String TABLE_NAME = "firm";

    @PostConstruct
    public void init(){
        tableName = TABLE_NAME;
    }
}
