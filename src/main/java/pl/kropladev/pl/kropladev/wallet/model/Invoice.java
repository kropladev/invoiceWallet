package pl.kropladev.pl.kropladev.wallet.model;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by kropla on 16.11.15.
 */
@Entity
@Table(name="invoices")
public class Invoice {

    @Id @GeneratedValue
    @Column(name = "ID")
    private Long id;

    @Column(name = "NO")
    private String invoiceNumber;

    @Column(name = "AMOUNT")
    private double amount;

    @Column(name = "PAY_DATE")
    private Date payDate;

    @Column(name = "INV_DATE")
    private Date tradeDate;

    @Column(name = "FKFIRM")
    private int fkFirm;

    @Column(name = "DESC")
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

    public Date getPayDate() {
        return payDate;
    }

    public void setPayDate(Date payDate) {
        this.payDate = payDate;
    }

    public Date getTradeDate() {
        return tradeDate;
    }

    public void setTradeDate(Date tradeDate) {
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

// getters and setters are removed for brevity
}
