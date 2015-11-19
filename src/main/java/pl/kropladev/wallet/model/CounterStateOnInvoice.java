package pl.kropladev.wallet.model;

import javax.persistence.*;

/**
 * Created by kropla on 19.11.15.
 */
@Entity
@Table(name = "counter_inv_states")
public class CounterStateOnInvoice {

    @Id
    @GeneratedValue
    @Column (name = "ID")
    private Long id;

    @Column(name = "STATE")
    private String value;

    @Column (name = "FKINVOICE")
    private Long invoiceId;

    @Column (name = "FKCOUNTER")
    private Long counterId;

    @OneToOne
    @PrimaryKeyJoinColumn(name = "FKINVOICE", referencedColumnName = "ID")
    private Invoice invoice;

    @OneToOne
    @PrimaryKeyJoinColumn(name ="FKCOUNTER", referencedColumnName = "ID")
    private Counter counter;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    public Long getInvoiceId() {
        return invoiceId;
    }

    public void setInvoiceId(Long invoiceId) {
        this.invoiceId = invoiceId;
    }

    public Long getCounterId() {
        return counterId;
    }

    public void setCounterId(Long counterId) {
        this.counterId = counterId;
    }

    public Invoice getInvoice() {
        return invoice;
    }

    public void setInvoice(Invoice invoice) {
        this.invoice = invoice;
    }

    public Counter getCounter() {
        return counter;
    }

    public void setCounter(Counter counter) {
        this.counter = counter;
    }

    @Override
    public String toString() {
        return "CounterStateOnInvoice{" +
                "id=" + id +
                ", value='" + value + '\'' +
                ", invoiceId=" + invoiceId +
                ", counterId=" + counterId +
                ", invoice=" + invoice +
                ", counter=" + counter +
                '}';
    }

}
