package greenbuilding.model.service;

import greenbuilding.ConnectionManager;
import greenbuilding.model.base.BaseLojaService;
import greenbuilding.model.dao.LojaDAO;
import greenbuilding.model.entity.Loja;
import java.sql.Connection;
import java.util.List;
import java.util.Map;

public class LojaService implements BaseLojaService {

    @Override
    public void create(Loja entity) throws Exception {
        Connection connection = ConnectionManager.getInstance().getConnection();
        try {
            LojaDAO dao = new LojaDAO();
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
    public Loja readById(Long id) throws Exception {
        Connection connection = ConnectionManager.getInstance().getConnection();
        Loja loja = null;
        try {
            LojaDAO dao = new LojaDAO();
            loja = dao.readById(connection, id);
            connection.commit();
            connection.close();
        } catch (Exception e) {
            connection.rollback();
            connection.close();
            throw e;
        }
        return loja;
    }

    @Override
    public List<Loja> read(Map<Long, Object> criteria) throws Exception {
        List<Loja> lojaList = null;
        Connection connection = ConnectionManager.getInstance().getConnection();
        try {
            LojaDAO dao = new LojaDAO();
            lojaList = dao.readByCriteria(connection, criteria);
            connection.commit();
            connection.close();
            return lojaList;
        } catch (Exception e) {
            connection.rollback();
            connection.close();
            throw e;
        }
    }

    @Override
    public void update(Loja entity) throws Exception {
        Connection connection = ConnectionManager.getInstance().getConnection();
        try {
            LojaDAO dao = new LojaDAO();
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
            LojaDAO dao = new LojaDAO();
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
