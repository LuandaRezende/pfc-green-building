package greenbuilding.model.dao;

import greenbuilding.PreparedStatementBuilder;
import greenbuilding.model.base.BaseDAO;
import greenbuilding.model.entity.Loja;
import greenbuilding.model.base.BaseEntity;
import greenbuilding.model.criteria.LojaCriteria;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class LojaDAO implements BaseDAO<Loja> {

    @Override
    public void create(Connection conn, Loja entity) throws Exception {
        String sql = "INSERT INTO loja(nome_loja, cnpj, fk_usuario_id) VALUES (?, ?, ?) RETURNING id";

        int i = 0;
        PreparedStatement preparedStatement = conn.prepareStatement(sql);
        preparedStatement.setString(++i, entity.getNome_loja());
        preparedStatement.setString(++i, entity.getCnpj());
        preparedStatement.setLong(++i, entity.getFk_usuario_id());

        ResultSet resultSet = preparedStatement.executeQuery();
        if (resultSet.next()) {
            entity.setId(resultSet.getLong("id"));
        }
        
        resultSet.close();
        preparedStatement.close();
    }

    //Arrumar aq
    @Override
    public Loja readById(Connection conn, Long id) throws Exception {
        String sql = "SELECT * FROM loja WHERE id=?;";

        PreparedStatement ps = conn.prepareStatement(sql);
        int i = 0;
        ps.setLong(++i, id);
        ResultSet rs = ps.executeQuery();

        Loja loja = null;

        if (rs.next()) {
            loja = new Loja();
            loja.setId(rs.getLong("id"));
            loja.setNome_loja(rs.getString("nome_loja"));
            loja.setCnpj(rs.getString("cnpj"));
            loja.setFk_usuario_id(rs.getLong("fk_usuario_id"));
        }

        rs.close();
        ps.close();

        return loja;
    }

    @Override
    public List<Loja> readByCriteria(Connection conn, Map<Long, Object> criteria) throws Exception {
        List<Loja> lojaList = new ArrayList<>();
        Loja loja = null;
        List<Object> paramList = new ArrayList<>();
        String sql = " SELECT * FROM loja WHERE 1=1";
        if (criteria != null) {
            if (criteria.containsKey(LojaCriteria.NOME_LOJA_EQ)) {
                sql += " AND nome_loja ilike ? ";
                paramList.add("%" + criteria.get(LojaCriteria.NOME_LOJA_EQ) + "%");
            }
            if (criteria.containsKey(LojaCriteria.CNPJ_EQ)) {
                sql += " AND cnpj =? ";
                paramList.add(criteria.get(LojaCriteria.CNPJ_EQ));
            }
            if (criteria.containsKey(LojaCriteria.FK_USUARIO_ID_EQ)) {
                sql += " AND fk_usuario_id = ? ";
                paramList.add(criteria.get(LojaCriteria.FK_USUARIO_ID_EQ));
            }
            
        }
//        
//        sql += " ORDER BY nome ASC ";
//        if (limit != null) {
//            sql += " LIMIT ?";
//            paramList.add(limit);
//        }
//        if (offset != null) {
//            sql += " OFFSET ?";
//            paramList.add(offset);
//        }

        PreparedStatement preparedStatement = PreparedStatementBuilder.build(conn, sql, paramList);
        ResultSet resultSet = preparedStatement.executeQuery();
        while (resultSet.next()) {
            loja = new Loja();
            loja.setId(resultSet.getLong("id"));
            loja.setNome_loja(resultSet.getString("nome_loja"));
            loja.setCnpj(resultSet.getString("cnpj"));
            loja.setFk_usuario_id(resultSet.getLong("fk_usuario_id"));
            lojaList.add(loja);
        }
        resultSet.close();
        preparedStatement.close();
        return lojaList;
    }

    @Override
    public void update(Connection conn, Loja entity) throws Exception {
        String sql = "UPDATE loja SET nome_loja=?, cnpj=?, fk_usuario_id=? WHERE id=?;";

        PreparedStatement preparedStatement = conn.prepareStatement(sql);
        int i = 0;
        preparedStatement.setString(++i, entity.getNome_loja());
        preparedStatement.setString(++i, entity.getCnpj());
        preparedStatement.setLong(++i, entity.getFk_usuario_id());
        preparedStatement.setLong(++i, entity.getId());
        preparedStatement.execute();
        preparedStatement.close();
    }

    @Override
    public void delete(Connection conn, Long id) throws Exception {
        String sql = "DELETE FROM loja WHERE id = ?;";
        PreparedStatement preparedStatement = conn.prepareStatement(sql);
        preparedStatement.setLong(1, id);
        preparedStatement.execute();
        preparedStatement.close();
    }

}
