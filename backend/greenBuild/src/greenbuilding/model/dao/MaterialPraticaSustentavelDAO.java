
package greenbuilding.model.dao;

import greenbuilding.model.base.BaseDAO;
import greenbuilding.model.entity.MaterialPraticaSustentavel;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;
import java.util.Map;


public class MaterialPraticaSustentavelDAO implements BaseDAO<MaterialPraticaSustentavel>{

    @Override
    public void create(Connection conn, MaterialPraticaSustentavel entity) throws Exception {
        String sql = "INSERT INTO material_pratica_sustentavel(fk_material_id) VALUES (?);";
        
        int i = 0;
        PreparedStatement preparedStatement = conn.prepareStatement(sql);
        preparedStatement.setLong(++i, entity.getFk_material_id());

        preparedStatement.execute();

        preparedStatement.close();
    }

    @Override
    public MaterialPraticaSustentavel readById(Connection conn, Long id) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<MaterialPraticaSustentavel> readByCriteria(Connection conn, Map<Long, Object> criteria) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void update(Connection conn, MaterialPraticaSustentavel entity) throws Exception {
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
