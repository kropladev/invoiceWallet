package pl.kropladev.wallet.model;

import javax.persistence.*;

/**
 * Created by kropla on 19.11.15.
 */
@Entity
@Table(name="counters")
public class Counter {

    @Id @GeneratedValue
    @Column(name = "ID")
    private Long id;

    @Column(name = "SNUMBER")
    private String name;

    @Column(name = "TYPE")
    private Long counterTypeId;

    @OneToOne
    @PrimaryKeyJoinColumn(name = "TYPE", referencedColumnName = "ID")
    private CounterTypes type;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Long getCounterTypeId() {
        return counterTypeId;
    }

    public void setCounterTypeId(Long counterTypeId) {
        this.counterTypeId = counterTypeId;
    }

    public CounterTypes getType() {
        return type;
    }

    public void setType(CounterTypes type) {
        this.type = type;
    }
    // getters and setters are removed for brevity

    @Override
    public String toString() {
        return "Counter{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", counterTypeId=" + counterTypeId +
                ", type=" + type +
                '}';
    }

}
