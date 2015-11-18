package pl.kropladev.wallet.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pl.kropladev.wallet.dao.SimpleDao;
import pl.kropladev.wallet.model.Firm;

import java.util.List;

/**
 * Created by kropla on 18.11.15.
 */
@Service("firmService")
@Transactional
public class FirmServiceImpl implements BaseService<Firm>{

    @Autowired
    @Qualifier("firmDao")
    private SimpleDao<Firm> dao;


    @Override
    public void saveEntity(Firm entity) {
        dao.saveEntity(entity);
    }

    @Override
    public void updateEntity(Firm entity) {
        Firm fEntity = dao.findById(entity.getId());
        if(fEntity!=null){
            fEntity.setAddress(entity.getAddress());
            fEntity.setDescription(entity.getDescription());
            fEntity.setIban(entity.getIban());
            fEntity.setName(entity.getName());
            fEntity.setNip(entity.getNip());
            fEntity.setPhoneNr(entity.getPhoneNr());
            fEntity.setRegon(entity.getRegon());
        }
    }

    @Override
    public void deleteEntityById(Long entityId) {
        dao.deleteEntityById(entityId);
    }

    @Override
    public List<Firm> findAllEntities() {
        return dao.findAllEntities();
    }

    @Override
    public Firm findEntityById(Long entityId) {
        return dao.findById(entityId);
    }
}
