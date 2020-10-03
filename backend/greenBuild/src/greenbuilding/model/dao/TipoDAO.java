
package greenbuilding.model.dao;

import greenbuilding.PreparedStatementBuilder;
import greenbuilding.model.base.BaseDAO;
import greenbuilding.model.criteria.TipoCriteria;
import greenbuilding.model.entity.Tipo;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class TipoDAO implements BaseDAO<Tipo>{

    @Override
    public void create(Connection conn, Tipo entity) throws Exception {
        String sql = "INSERT INTO tipo(nome, descricao) VALUES (?, ?) returning id;";
        
        int i = 0;
        PreparedStatement preparedStatement = conn.prepareStatement(sql);
//        preparedStatement.setLong(++i, entity.getId());
        preparedStatement.setString(++i, entity.getNome());
        preparedStatement.setString(++i, entity.getDescricao());

        ResultSet resultSet = preparedStatement.executeQuery();
        if (resultSet.next()) {
            entity.setId(resultSet.getLong("id"));
        }

        resultSet.close();
        preparedStatement.close();
    }

    @Override
    public Tipo readById(Connection conn, Long id) throws Exception {
        String sql = "SELECT * FROM tipo WHERE id=?;";
        
        PreparedStatement ps = conn.prepareStatement(sql);
        int i = 0;
        ps.setLong(++i, id);
        ResultSet rs = ps.executeQuery();
        Tipo tipo = null;
        if (rs.next()) {
            tipo = new Tipo();
            tipo.setNome(rs.getString("nome"));
            tipo.setDescricao(rs.getString("descricao"));
            
        }

        rs.close();
        ps.close();
        return tipo;
    }

    @Override
    public List<Tipo> readByCriteria(Connection conn, Map<Long, Object> criteria) throws Exception {
        List<Tipo> tipoList = new ArrayList<>();

        List<Object> paramList = new ArrayList<>();
        String sql = "SELECT * FROM tipo WHERE 1=1";
        if (criteria != null) {
            if (criteria.containsKey(TipoCriteria.NOME_EQ)) {
                sql += " AND nome ilike ? ";
                paramList.add("%" + criteria.get(TipoCriteria.NOME_EQ) + "%");
            }
            if (criteria.containsKey(TipoCriteria.DESCRICAO_EQ)) {
                sql += " AND descricao =? ";
                paramList.add(criteria.get(TipoCriteria.DESCRICAO_EQ));
            }
            
        }
        
        
        
        PreparedStatement preparedStatement = PreparedStatementBuilder.build(conn, sql, paramList);
        ResultSet resultSet = preparedStatement.executeQuery();
        while (resultSet.next()) {
            Tipo tipo = new Tipo();
            tipo.setId(resultSet.getLong("id"));
            tipo.setNome(resultSet.getString("nome"));
            tipo.setDescricao(resultSet.getString("descricao"));
            
            
            tipoList.add(tipo);
        }
        resultSet.close();
        preparedStatement.close();
        return tipoList;
 
    }

    @Override
    public void update(Connection conn, Tipo entity) throws Exception {
        String sql = "UPDATE tipo SET nome=?, descricao=? WHERE id = ?;";

        PreparedStatement preparedStatement = conn.prepareStatement(sql);
        int i = 1;
        preparedStatement.setString(i++, entity.getNome());
        preparedStatement.setString(i++, entity.getDescricao());
        preparedStatement.setLong(i++, entity.getId());
        preparedStatement.execute();
        preparedStatement.close();
    }

    @Override
    public void delete(Connection conn, Long id) throws Exception {
        String sql = "DELETE FROM tipo WHERE id = ?;";
        PreparedStatement preparedStatement = conn.prepareStatement(sql);
        preparedStatement.setLong(1, id);
        preparedStatement.execute();
        preparedStatement.close();
    }
    
}
