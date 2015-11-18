package pl.kropladev.wallet.dao;

/**
 * Created by kropla on 17.11.15.
 */

    import java.util.List;


    public interface SimpleDao <T>{

        T findById(Long id);

        void saveEntity(T entity);

        void deleteEntityById(Long id);

        List<T> findAllEntities();

    }
