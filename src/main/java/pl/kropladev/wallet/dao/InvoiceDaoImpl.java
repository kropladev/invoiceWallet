package pl.kropladev.wallet.dao;

/**
 * Created by kropla on 17.11.15.
 */

    import java.util.List;

    import org.hibernate.Criteria;
    import org.hibernate.Query;
    import org.slf4j.Logger;
    import org.slf4j.LoggerFactory;
    import org.springframework.stereotype.Repository;

    import pl.kropladev.wallet.model.Invoice;

    @Repository("invoiceDao")
    public class InvoiceDaoImpl extends AbstractDao<Long, Invoice> implements SimpleDao<Invoice> {
        private static final Logger logger = LoggerFactory.getLogger(InvoiceDaoImpl.class);
        public static final String TABLE_NAME = "invoice";
        public Invoice findById(Long id) {
            return getByKey(id);
        }

        public void saveEntity(Invoice invoice) {
            logger.debug(invoice.toString());
            persist(invoice);
        }

        public void deleteEntityById(Long entityId) {
            Query query = getSession().createSQLQuery("delete from " +
                    TABLE_NAME +
                    "where id = :id");
            query.setLong("id", entityId);
            query.executeUpdate();
        }

        @SuppressWarnings("unchecked")
        public List<Invoice> findAllEntities() {
            Criteria criteria = createEntityCriteria();
            return (List<Invoice>) criteria.list();
        }

    }

