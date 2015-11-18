package pl.kropladev.wallet.dao;

/**
 * Created by kropla on 17.11.15.
 */

    import java.util.List;

    import org.hibernate.Criteria;
    import org.hibernate.Query;
    import org.hibernate.criterion.Restrictions;
    import org.slf4j.Logger;
    import org.slf4j.LoggerFactory;
    import org.springframework.stereotype.Repository;

    import pl.kropladev.wallet.model.Invoice;

    @Repository("invoiceDao")
    public class InvoiceDaoImpl extends AbstractDao<Long, Invoice> implements InvoiceDao {
        private static final Logger logger = LoggerFactory.getLogger(InvoiceDaoImpl.class);

        public Invoice findById(Long id) {
            return getByKey(id);
        }

        public void saveInvoice(Invoice invoice) {
            logger.debug(invoice.toString());
            persist(invoice);
        }

        public void deleteInvoiceById(Long invoiceId) {
            Query query = getSession().createSQLQuery("delete from invoices where id = :ssn");
            query.setLong("id", invoiceId);
            query.executeUpdate();
        }

        @SuppressWarnings("unchecked")
        public List<Invoice> findAllInvoices() {
            Criteria criteria = createEntityCriteria();
            return (List<Invoice>) criteria.list();
        }

    }

