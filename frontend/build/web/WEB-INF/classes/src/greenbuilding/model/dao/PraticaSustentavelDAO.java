package greenbuilding.model.dao;

import greenbuilding.model.base.BaseDAO;
import greenbuilding.model.entity.PraticaSustentavel;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;
import java.util.Map;


public class PraticaSustentavelDAO implements BaseDAO<PraticaSustentavel>{

    @Override
    public void create(Connection conn, PraticaSustentavel entity) throws Exception {
        String sql = "INSERT INTO pratica_sustentavel(descricao, imagem, fk_administrador_id) VALUES (?, ?, ?) returning fk_administrador_id;";
        
        int i = 0;
        PreparedStatement preparedStatement = conn.prepareStatement(sql);
//        preparedStatement.setLong(++i, entity.getId());
        preparedStatement.setString(++i, entity.getDescricao());
        preparedStatement.setString(++i, entity.getImagem());
        preparedStatement.setLong(++i, entity.getFk_Administrador_id());

        ResultSet resultSet = preparedStatement.executeQuery();
        if (resultSet.next()) {
            entity.setId(resultSet.getLong("fk_administrador_id"));
        }

        resultSet.close();
        preparedStatement.close();
    }

    @Override
    public PraticaSustentavel readById(Connection conn, Long id) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<PraticaSustentavel> readByCriteria(Connection conn, Map<Long, Object> criteria) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void update(Connection conn, PraticaSustentavel entity) throws Exception {
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
