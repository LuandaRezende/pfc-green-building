/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package greenbuilding.model.service;

import greenbuilding.ConnectionManager;
import greenbuilding.model.base.BaseAnunciaService;
import greenbuilding.model.dao.AnunciaDAO;
import greenbuilding.model.entity.Anuncia;
import java.sql.Connection;
import java.util.List;
import java.util.Map;


public class AnunciaService implements BaseAnunciaService {

    @Override
    public void create(Anuncia entity) throws Exception {
         Connection connection = ConnectionManager.getInstance().getConnection();
        try {
            AnunciaDAO dao = new AnunciaDAO();
            dao.create(connection, entity);
            connection.commit();
            connection.close();
        } catch (Exception e) {
            connection.rollback();
            connection.close();
            throw e;
        }
    }

    @Override
    public Anuncia readById(Long id) throws Exception {
        Connection connection = ConnectionManager.getInstance().getConnection();
        Anuncia anuncia = null;
        try {
            AnunciaDAO dao = new AnunciaDAO();
            anuncia = dao.readById(connection, id);
            connection.commit();
            connection.close();
        } catch (Exception e) {
            connection.rollback();
            connection.close();
            throw e;
        }
        return anuncia;
    }

    @Override
    public List<Anuncia> read(Map<Long, Object> criteria) throws Exception {
        List<Anuncia> anunciaList = null;
        Connection connection = ConnectionManager.getInstance().getConnection();
        try {
            AnunciaDAO dao = new AnunciaDAO();
            anunciaList = dao.readByCriteria(connection, criteria);
            connection.commit();
            connection.close();
            return anunciaList;
        } catch (Exception e) {
            connection.rollback();
            connection.close();
            throw e;
        }
    
    }

    @Override
    public void update(Anuncia entity) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void delete(Long id) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Map<String, String> validate(Map<String, Object> fields) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
