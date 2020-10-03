/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package greenbuilding.model.service;

import greenbuilding.ConnectionManager;
import greenbuilding.model.base.BaseTipoService;
import greenbuilding.model.dao.TipoDAO;
import greenbuilding.model.entity.Tipo;
import java.sql.Connection;
import java.util.List;
import java.util.Map;

/**
 *
 * @author sacha
 */
public class TipoService implements BaseTipoService{

    @Override
    public void create(Tipo entity) throws Exception {
        Connection connection = ConnectionManager.getInstance().getConnection();
        try {
            TipoDAO dao = new TipoDAO();
            dao.create(connection, entity);
            connection.commit();
            connection.close();
        } catch (Exception e) {
            connection.rollback();
            connection.close();
//            System.out.println("teste");
            throw e;
        }
    }

    @Override
    public Tipo readById(Long id) throws Exception {
        Connection connection = ConnectionManager.getInstance().getConnection();
        Tipo tipo = null;
        try {
            TipoDAO dao = new TipoDAO();
            tipo = dao.readById(connection, id);
            connection.commit();
            connection.close();
        } catch (Exception e) {
            connection.rollback();
            connection.close();
            throw e;
        }
        return tipo;
    }

    @Override
    public List<Tipo> read(Map<Long, Object> criteria) throws Exception {
        List<Tipo> tipoList = null;
        Connection connection = ConnectionManager.getInstance().getConnection();
        try {
            TipoDAO dao = new TipoDAO();
            tipoList = dao.readByCriteria(connection, criteria);
            connection.commit();
            connection.close();
            return tipoList;
        } catch (Exception e) {
            connection.rollback();
            connection.close();
            throw e;
        }
    }

    @Override
    public void update(Tipo entity) throws Exception {
        Connection connection = ConnectionManager.getInstance().getConnection();
        try {
            TipoDAO dao = new TipoDAO();
            dao.update(connection, entity);
            connection.commit();
            connection.close();
        } catch (Exception e) {
            connection.rollback();
            connection.close();
            throw e;
        }
    }

    @Override
    public void delete(Long id) throws Exception {
        Connection connection = ConnectionManager.getInstance().getConnection();
        try {
            TipoDAO dao = new TipoDAO();
            dao.delete(connection, id);
            connection.commit();
            connection.close();
        } catch (Exception e) {
            connection.rollback();
            connection.close();
            throw e;
        }
    }

    @Override
    public Map<String, String> validate(Map<String, Object> fields) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
