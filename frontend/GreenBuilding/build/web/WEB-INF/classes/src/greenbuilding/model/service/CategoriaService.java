/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package greenbuilding.model.service;

import greenbuilding.ConnectionManager;
import greenbuilding.model.base.BaseCategoriaService;
import greenbuilding.model.dao.CategoriaDAO;
import greenbuilding.model.entity.Categoria;
import java.sql.Connection;
import java.util.List;
import java.util.Map;

/**
 *
 * @author sacha
 */
public class CategoriaService implements BaseCategoriaService{

    @Override
    public void create(Categoria entity) throws Exception {
        Connection connection = ConnectionManager.getInstance().getConnection();
        try {
            CategoriaDAO dao = new CategoriaDAO();
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
    public Categoria readById(Long id) throws Exception {
        Connection connection = ConnectionManager.getInstance().getConnection();
        Categoria categoria = null;
        try {
            CategoriaDAO dao = new CategoriaDAO();
            categoria = dao.readById(connection, id);
            connection.commit();
            connection.close();
        } catch (Exception e) {
            connection.rollback();
            connection.close();
            throw e;
        }
        return categoria;
    }

    @Override
    public void update(Categoria entity) throws Exception {
         Connection connection = ConnectionManager.getInstance().getConnection();
        try {
            CategoriaDAO dao = new CategoriaDAO();
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
            CategoriaDAO dao = new CategoriaDAO();
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

    @Override
    public List<Categoria> read(Map<Long, Object> criteria) throws Exception {
    List<Categoria> categoriaList = null;
        Connection connection = ConnectionManager.getInstance().getConnection();
        try {
            CategoriaDAO dao = new CategoriaDAO();
            categoriaList = dao.readByCriteria(connection, criteria);
            connection.commit();
            connection.close();
            return categoriaList;
        } catch (Exception e) {
            connection.rollback();
            connection.close();
            throw e;
        }
    }
    
}
