package pl.kropladev.wallet.service;

import java.util.List;

/**
 * Created by kropla on 18.11.15.
 */
public interface BaseService<T> {
    void saveEntity(T entity);
    void updateEntity(T entity);
    void deleteEntityById(Long entityId);
    List<T> findAllEntities();
    T findEntityById(Long entityId);
}
