package pl.kropladev.wallet.model;

import javax.persistence.*;
import java.util.Date;

import org.hibernate.annotations.Type;
import org.joda.time.LocalDate;
import org.springframework.format.annotation.DateTimeFormat;

/**
 * Created by kropla on 16.11.15.
 */
@Entity
@Table(name="invoices")
public class Invoice {

    @Id @GeneratedValue
    @Column(name = "ID")
    private Long id;

    @Column(name = "INVOICE_NUMBER")
    private String invoiceNumber;

    @Column(name = "AMOUNT")
    private double amount;

    @Column(name = "PAY_DATE")
    @DateTimeFormat(pattern="yyyy-MM-dd")
    @Type(type="org.jadira.usertype.dateandtime.joda.PersistentLocalDate")
    private LocalDate payDate;

    @Column(name = "INVOICE_DATE")
    @DateTimeFormat(pattern="yyyy-MM-dd")
    @Type(type="org.jadira.usertype.dateandtime.joda.PersistentLocalDate")
    private LocalDate tradeDate;

    @Column(name = "FKFIRM")
    private int fkFirm;

    @Column(name = "DESCRIPTION")
    private String description;


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getInvoiceNumber() {
        return invoiceNumber;
    }

    public void setInvoiceNumber(String invoiceNumber) {
        this.invoiceNumber = invoiceNumber;
    }

    public double getAmount() {
        return amount;
    }

    public void setAmount(double amount) {
        this.amount = amount;
    }

    public LocalDate getPayDate() {
        return payDate;
    }

    public void setPayDate(LocalDate payDate) {
        this.payDate = payDate;
    }

    public LocalDate getTradeDate() {
        return tradeDate;
    }

    public void setTradeDate(LocalDate tradeDate) {
        this.tradeDate = tradeDate;
    }

    public int getFkFirm() {
        return fkFirm;
    }

    public void setFkFirm(int fkFirm) {
        this.fkFirm = fkFirm;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Override
    public String toString() {
        return "Invoice{" +
                "id=" + id +
                ", invoiceNumber='" + invoiceNumber + '\'' +
                ", amount=" + amount +
                ", payDate=" + payDate +
                ", tradeDate=" + tradeDate +
                ", fkFirm=" + fkFirm +
                ", description='" + description + '\'' +
                '}';
    }

// getters and setters are removed for brevity
}
