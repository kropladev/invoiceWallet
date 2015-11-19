package pl.kropladev.wallet.model;

import org.hibernate.annotations.Type;
import org.joda.time.DateTime;

import javax.persistence.*;

/**
 * Created by kropla on 19.11.15.
 */
@Entity
@Table(name = "counter_states")
public class CounterState {

    @Id @GeneratedValue
    @Column(name = "ID")
    private Long id;

    @Column(name = "STATE")
    private Double value;

    @Column(name = "READ_TIME")
    @Type(type = "org.jadira.usertype.dateandtime.joda.PersistentDateTime")
    private DateTime readTimestamp;

/*    @Column(name="INPUT_TIME")
    @Type(type = "org.jadira.usertype.dateandtime.joda.PersistentDateTime")
    private DateTime inputTime;*/

    @Column(name="FKCOUNTER")
    private Long counterId;

    @OneToOne
    @PrimaryKeyJoinColumn(name = "FKCOUNTER", referencedColumnName = "ID")
    private Counter counter;

    @Override
    public String toString() {
        return "CounterState{" +
                "id=" + id +
                ", value=" + value +
                ", readTimestamp=" + readTimestamp +
                ", counterId=" + counterId +
                ", counter=" + counter +
                '}';
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Double getValue() {
        return value;
    }

    public void setValue(Double value) {
        this.value = value;
    }

    public DateTime getReadTimestamp() {
        return readTimestamp;
    }

    public void setReadTimestamp(DateTime readTimestamp) {
        this.readTimestamp = readTimestamp;
    }

    public Long getCounterId() {
        return counterId;
    }

    public void setCounterId(Long counterId) {
        this.counterId = counterId;
    }

    public Counter getCounter() {
        return counter;
    }

    public void setCounter(Counter counter) {
        this.counter = counter;
    }
}
