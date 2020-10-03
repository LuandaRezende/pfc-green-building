/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package greenbuilding.model.service;

import greenbuilding.ConnectionManager;
import greenbuilding.model.base.BaseContatoService;
import greenbuilding.model.dao.ContatoDAO;
import greenbuilding.model.entity.Contato;
import java.sql.Connection;
import java.util.List;
import java.util.Map;

/**
 *
 * @author sacha
 */
public class ContatoService implements BaseContatoService{

    @Override
    public void create(Contato entity) throws Exception {
         Connection connection = ConnectionManager.getInstance().getConnection();
        try {
            ContatoDAO dao = new ContatoDAO();
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
    public Contato readById(Long id) throws Exception {
        Connection connection = ConnectionManager.getInstance().getConnection();
        Contato contato = null;
        try {
            ContatoDAO dao = new ContatoDAO();
            contato = dao.readById(connection, id);
            connection.commit();
            connection.close();
        } catch (Exception e) {
            connection.rollback();
            connection.close();
            throw e;
        }
        return contato;
    }

    @Override
    public List<Contato> read(Map<Long, Object> criteria) throws Exception {
        List<Contato> contatoList = null;
        Connection connection = ConnectionManager.getInstance().getConnection();
        try {
            ContatoDAO dao = new ContatoDAO();
            contatoList = dao.readByCriteria(connection, criteria);
            connection.commit();
            connection.close();
            return contatoList;
        } catch (Exception e) {
            connection.rollback();
            connection.close();
            throw e;
        }
    }

    @Override
    public void update(Contato entity) throws Exception {
        Connection connection = ConnectionManager.getInstance().getConnection();
        try {
            ContatoDAO dao = new ContatoDAO();
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
            ContatoDAO dao = new ContatoDAO();
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
