/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package greenbuilding.model.base;

import java.sql.Connection;
import java.util.List;
import java.util.Map;


public interface BaseDAO<E extends BaseEntity>{
    
    public void create(Connection conn, E entity) throws Exception;

    public E readById(Connection conn, Long id) throws Exception;

    public List<E> readByCriteria(Connection conn, Map<Long, Object> criteria) throws Exception;

    public void update(Connection conn, E entity) throws Exception;

    public void delete(Connection conn, Long id) throws Exception;
}
