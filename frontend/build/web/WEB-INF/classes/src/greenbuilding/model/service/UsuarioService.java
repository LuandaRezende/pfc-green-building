package greenbuilding.model.service;

import greenbuilding.ConnectionManager;
import greenbuilding.model.base.BaseUsuarioService;
import greenbuilding.model.dao.UsuarioDAO;
import greenbuilding.model.entity.Usuario;
import java.sql.Connection;
import java.util.List;
import java.util.Map;

public class UsuarioService implements BaseUsuarioService {

    @Override
    public void create(Usuario entity) throws Exception {
        Connection connection = ConnectionManager.getInstance().getConnection();
        try {
            UsuarioDAO dao = new UsuarioDAO();
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
    public Usuario readById(Long id) throws Exception {
        Connection connection = ConnectionManager.getInstance().getConnection();
        Usuario usuario = null;
        try {
            UsuarioDAO dao = new UsuarioDAO();
            usuario = dao.readById(connection, id);
            connection.commit();
            connection.close();
        } catch (Exception e) {
            connection.rollback();
            connection.close();
            throw e;
        }
        return usuario;
    }

    @Override
    public List<Usuario> read(Map<Long, Object> criteria) throws Exception {
        List<Usuario> usuarioList = null;
        Connection connection = ConnectionManager.getInstance().getConnection();
        try {
            UsuarioDAO dao = new UsuarioDAO();
            usuarioList = dao.readByCriteria(connection, criteria);
            connection.commit();
            connection.close();
            return usuarioList;
        } catch (Exception e) {
            connection.rollback();
            connection.close();
            throw e;
        }
    }

    @Override
    public void update(Usuario entity) throws Exception {
        Connection connection = ConnectionManager.getInstance().getConnection();
        try {
            UsuarioDAO dao = new UsuarioDAO();
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
            UsuarioDAO dao = new UsuarioDAO();
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
