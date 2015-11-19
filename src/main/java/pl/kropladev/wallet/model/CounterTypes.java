package pl.kropladev.wallet.model;

import javax.persistence.*;

/**
 * Created by kropla on 19.11.15.
 */
@Entity
@Table(name = "counter_types")
public class CounterTypes {

    @Id @GeneratedValue
    @Column (name = "ID")
    private Long id;

    @Column(name = "SYMBOL")
    private String symbol;

    @Column(name = "DESCRIPTION")
    private String description;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getSymbol() {
        return symbol;
    }

    public void setSymbol(String symbol) {
        this.symbol = symbol;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Override
    public String toString() {
        return "CounterTypes{" +
                "id=" + id +
                ", symbol='" + symbol + '\'' +
                ", description='" + description + '\'' +
                '}';
    }
}
