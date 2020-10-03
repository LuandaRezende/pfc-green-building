/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package greenbuilding.model.dao;


import greenbuilding.model.base.BaseDAO;
import greenbuilding.model.entity.Administrador;
import greenbuilding.model.entity.Usuario;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;
import java.util.Map;

/**
 *
 * @author sacha
 */
public class AdministradorDAO implements BaseDAO<Administrador>{

    @Override
    public void create(Connection conn, Administrador entity) throws Exception {
        String sql="INSERT INTO administrador(fk_usuario_id) VALUES (?) RETURNING id";
        
        int i=0;
        
        PreparedStatement preparedStatement = conn.prepareStatement(sql);
        preparedStatement.setLong(++i, entity.getFk_usuario_id());


        ResultSet resultSet = preparedStatement.executeQuery();
        if (resultSet.next()) {
            entity.setId(resultSet.getLong("id"));
        }

        resultSet.close();
        preparedStatement.close();
    }
    
    @Override
    public Administrador readById(Connection conn, Long id) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
     @Override
    public List<Administrador> readByCriteria(Connection conn, Map<Long, Object> criteria) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

     @Override
    public void update(Connection conn, Administrador entity) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    @Override
    public void delete(Connection conn, Long id) throws Exception {
        String sql = "DELETE FROM usuario WHERE id = ?;";
        PreparedStatement preparedStatement = conn.prepareStatement(sql);
        preparedStatement.setLong(1, id);
        preparedStatement.execute();
        preparedStatement.close();
    }
}
