package pl.kropladev.wallet.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pl.kropladev.wallet.dao.SimpleDao;
import pl.kropladev.wallet.model.CounterStateOnInvoice;

import java.util.List;

/**
 * Created by kropla on 19.11.15.
 */
@Service("counterStateOnInvoiceService")
@Transactional
public class CounterStateOnInvoiceService implements BaseService<CounterStateOnInvoice> {
    @Autowired
    @Qualifier("counterStateOnInvoiceDao")
    private SimpleDao<CounterStateOnInvoice> dao;


    @Override
    public void saveEntity(CounterStateOnInvoice entity) {
        dao.saveEntity(entity);
    }

    @Override
    public void updateEntity(CounterStateOnInvoice viewEntity) {
        CounterStateOnInvoice dbEntity = dao.findById(viewEntity.getId());
        if(dbEntity!=null){
            dbEntity.setValue(viewEntity.getValue());
        }
    }

    @Override
    public void deleteEntityById(Long entityId) {
        dao.deleteEntityById(entityId);
    }

    @Override
    public List<CounterStateOnInvoice> findAllEntities() {
        return dao.findAllEntities();
    }

    @Override
    public CounterStateOnInvoice findEntityById(Long entityId) {
        return dao.findById(entityId);
    }
}
