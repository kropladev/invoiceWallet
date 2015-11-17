package pl.kropladev.wallet.dao;

/**
 * Created by kropla on 17.11.15.
 */

    import java.util.List;

    import pl.kropladev.wallet.model.Invoice;

    public interface InvoiceDao {

        Invoice findById(Long id);

        void saveInvoice(Invoice invoice);

        void deleteInvoiceById(Long id);

        List<Invoice> findAllInvoices();


    }
