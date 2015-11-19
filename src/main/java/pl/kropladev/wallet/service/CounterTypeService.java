package pl.kropladev.wallet.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pl.kropladev.wallet.dao.SimpleDao;
import pl.kropladev.wallet.model.CounterTypes;

import java.util.List;

/**
 * Created by kropla on 19.11.15.
 */
@Service("counterTypeService")
@Transactional
public class CounterTypeService implements BaseService<CounterTypes>{

    @Autowired
    @Qualifier("counterTypeDao")
    private SimpleDao<CounterTypes> dao;

    @Override
    public void saveEntity(CounterTypes entity) {
        dao.saveEntity(entity);
    }

    @Override
    public void updateEntity(CounterTypes viewEntity) {
        CounterTypes dbEntity = dao.findById(viewEntity.getId());
        if(dbEntity!=null){
            dbEntity.setSymbol(viewEntity.getSymbol());
            dbEntity.setDescription(viewEntity.getDescription());
        }
    }

    @Override
    public void deleteEntityById(Long entityId) {
        dao.deleteEntityById(entityId);
    }

    @Override
    public List<CounterTypes> findAllEntities() {
        return dao.findAllEntities();
    }

    @Override
    public CounterTypes findEntityById(Long entityId) {
        return dao.findById(entityId);
    }
}
