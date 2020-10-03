
package greenbuilding.model.service;

import greenbuilding.ConnectionManager;
import greenbuilding.model.base.BaseMaterialService;
import greenbuilding.model.dao.MaterialDAO;
import greenbuilding.model.entity.Material;
import java.sql.Connection;
import java.util.List;
import java.util.Map;


public class MaterialService implements BaseMaterialService{

    @Override
    public void create(Material entity) throws Exception {
        Connection connection = ConnectionManager.getInstance().getConnection();
        try {
            MaterialDAO dao = new MaterialDAO();
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
    public Material readById(Long id) throws Exception {
        Connection connection = ConnectionManager.getInstance().getConnection();
        Material material = null;
        try {
            MaterialDAO dao = new MaterialDAO();
            material = dao.readById(connection, id);
            connection.commit();
            connection.close();
        } catch (Exception e) {
            connection.rollback();
            connection.close();
            throw e;
        }
        return material;
    }

    @Override
    public List<Material> read(Map<Long, Object> criteria) throws Exception {
        List<Material> materialList = null;
        Connection connection = ConnectionManager.getInstance().getConnection();
        try {
            MaterialDAO dao = new MaterialDAO();
            materialList = dao.readByCriteria(connection, criteria);
            connection.commit();
            connection.close();
            return materialList;
        } catch (Exception e) {
            connection.rollback();
            connection.close();
            throw e;
        }
    }

    @Override
    public void update(Material entity) throws Exception {
        Connection connection = ConnectionManager.getInstance().getConnection();
        try {
            MaterialDAO dao = new MaterialDAO();
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
            MaterialDAO dao = new MaterialDAO();
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
