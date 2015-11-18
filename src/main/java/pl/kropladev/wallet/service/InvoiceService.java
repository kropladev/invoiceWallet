package pl.kropladev.wallet.service;

/**
 * Created by kropla on 17.11.15.
 */

    import java.util.List;

    import pl.kropladev.wallet.model.Invoice;

public interface InvoiceService {

        void saveInvoice(Invoice invoice);

        void updateInvoice(Invoice invoice);

        void deleteInvoiceById(Long invoiceId);

        List<Invoice> findAllInvoices();

        Invoice findInvoiceById(Long invoiceId);

    }
