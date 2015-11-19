package pl.kropladev.wallet.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pl.kropladev.wallet.dao.SimpleDao;
import pl.kropladev.wallet.model.CounterState;

import java.util.List;

/**
 * Created by kropla on 19.11.15.
 */
@Service("counterStateService")
@Transactional
public class CounterStateService implements BaseService<CounterState>{
    @Autowired
    @Qualifier("counterStateDao")
    private SimpleDao<CounterState> dao;


    @Override
    public void saveEntity(CounterState entity) {
        dao.saveEntity(entity);
    }

    @Override
    public void updateEntity(CounterState viewEntity) {
        CounterState dbEntity = dao.findById(viewEntity.getId());
        if(dbEntity!=null){
            dbEntity.setValue(viewEntity.getValue());
        }
    }

    @Override
    public void deleteEntityById(Long entityId) {
        dao.deleteEntityById(entityId);
    }

    @Override
    public List<CounterState> findAllEntities() {
        return dao.findAllEntities();
    }

    @Override
    public CounterState findEntityById(Long entityId) {
        return dao.findById(entityId);
    }
}

