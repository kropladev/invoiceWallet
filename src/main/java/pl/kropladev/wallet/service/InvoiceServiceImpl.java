package pl.kropladev.wallet.service;

/**
 * Created by kropla on 17.11.15.
 */
    import java.util.List;

    import org.springframework.beans.factory.annotation.Autowired;
    import org.springframework.beans.factory.annotation.Qualifier;
    import org.springframework.stereotype.Service;
    import org.springframework.transaction.annotation.Transactional;

    import pl.kropladev.wallet.dao.SimpleDao;
    import pl.kropladev.wallet.model.Invoice;

    @Service("invoiceService")
    @Transactional
    public class InvoiceServiceImpl implements InvoiceService{

        @Autowired @Qualifier("invoiceDao")
        private SimpleDao<Invoice> dao;

        public Invoice findInvoiceById(Long id) {
            return dao.findById(id);
        }

        public void saveInvoice(Invoice invoice) {
            dao.saveEntity(invoice);
        }

        /*
         * Since the method is running with Transaction, No need to call hibernate update explicitly.
         * Just fetch the entity from db and update it with proper values within transaction.
         * It will be updated in db once transaction ends.
         */
        public void updateInvoice(Invoice invoice) {
            Invoice entity = dao.findById(invoice.getId());
            if(entity!=null){
                entity.setDescription(invoice.getDescription());
                entity.setInvoiceNumber(invoice.getInvoiceNumber());
                entity.setAmount(invoice.getAmount());
                entity.setFkFirm(invoice.getFkFirm());
                entity.setPayDate(invoice.getPayDate());
                entity.setTradeDate(invoice.getTradeDate());
            }
        }

        public void deleteInvoiceById(Long entityId) {
            dao.deleteEntityById(entityId);
        }

        public List<Invoice> findAllInvoices() {
            return dao.findAllEntities();
        }

    }
