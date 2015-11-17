package pl.kropladev.wallet.service;

/**
 * Created by kropla on 17.11.15.
 */
    import java.util.List;

    import org.springframework.beans.factory.annotation.Autowired;
    import org.springframework.stereotype.Service;
    import org.springframework.transaction.annotation.Transactional;

    import pl.kropladev.wallet.dao.InvoiceDao;
    import pl.kropladev.wallet.model.Invoice;

    @Service("invoiceService")
    @Transactional
    public class InvoiceServiceImpl implements InvoiceService{

        @Autowired
        private InvoiceDao dao;

        public Invoice findInvoiceById(Long id) {
            return dao.findById(id);
        }

        public void saveInvoice(Invoice invoice) {
            dao.saveInvoice(invoice);
        }

        /*
         * Since the method is running with Transaction, No need to call hibernate update explicitly.
         * Just fetch the entity from db and update it with proper values within transaction.
         * It will be updated in db once transaction ends.
         */
        public void updateInvoice(Invoice invoice) {
            Invoice entity = dao.findById(invoice.getId());
            if(entity!=null){
  /*              entity.setName(invoice.getName());
                entity.setJoiningDate(invoice.getJoiningDate());
                entity.setSalary(invoice.getSalary());
                entity.setSsn(invoice.getSsn());*/
            }
        }

        public void deleteInvoiceById(Long invId) {
            dao.deleteInvoiceById(invId);
        }

        public List<Invoice> findAllInvoices() {
            return dao.findAllInvoices();
        }

/*        public Invoice findInvoiceBySsn(String ssn) {
            return dao.findInvoiceBySsn(ssn);
        }*/

/*        public boolean isInvoiceSsnUnique(Integer id, String ssn) {
            Invoice invoice = findInvoiceBySsn(ssn);
            return ( invoice == null || ((id != null) && (invoice.getId() == id)));
        }*/

    }
