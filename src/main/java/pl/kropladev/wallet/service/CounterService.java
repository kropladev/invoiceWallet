package pl.kropladev.wallet.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pl.kropladev.wallet.dao.SimpleDao;
import pl.kropladev.wallet.model.Counter;

import java.util.List;

/**
 * Created by kropla on 19.11.15.
 */
@Service("counterService")
//@Transactional
public class CounterService implements BaseService<Counter>{
    @Autowired
    @Qualifier("counterDao")
    private SimpleDao<Counter> dao;


    @Override
    public void saveEntity(Counter entity) {
        dao.saveEntity(entity);
    }

    @Override
    public void updateEntity(Counter viewEntity) {
        Counter dbEntity = dao.findById(viewEntity.getId());
        if(dbEntity!=null){
            dbEntity.setName(viewEntity.getName());
            dbEntity.setCounterTypeId(viewEntity.getCounterTypeId());
        }
    }

    @Override
    public void deleteEntityById(Long entityId) {
        dao.deleteEntityById(entityId);
    }

    @Override
    public List<Counter> findAllEntities() {
        return dao.findAllEntities();
    }

    @Override
    public Counter findEntityById(Long entityId) {
        return dao.findById(entityId);
    }
}
