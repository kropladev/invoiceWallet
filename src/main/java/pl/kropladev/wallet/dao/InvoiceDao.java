package pl.kropladev.wallet.dao;

/**
 * Created by kropla on 17.11.15.
 */

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;
import pl.kropladev.wallet.model.Invoice;

import javax.annotation.PostConstruct;

@Repository("invoiceDao")
public class InvoiceDao extends AbstractDao<Long, Invoice> {
    private static final Logger logger = LoggerFactory.getLogger(InvoiceDao.class);
    public static final String TABLE_NAME = "invoices";

    @PostConstruct
    public void init(){
        tableName = TABLE_NAME;
    }
}

