
package greenbuilding.model.dao;

import greenbuilding.PreparedStatementBuilder;
import greenbuilding.model.base.BaseDAO;
import greenbuilding.model.criteria.ContatoCriteria;
import greenbuilding.model.entity.Contato;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class ContatoDAO implements BaseDAO<Contato>{

    @Override
    public void create(Connection conn, Contato entity) throws Exception {
        String sql = "INSERT INTO contato(fixo, celular, whatsapp, email, fk_loja_id) VALUES (?, ?, ?, ?, ?) returning id;";
        
        int i = 0;
        PreparedStatement preparedStatement = conn.prepareStatement(sql);
//        preparedStatement.setString(++i, entity.());
        preparedStatement.setString(++i, entity.getFixo());
        preparedStatement.setString(++i, entity.getCelular());
        preparedStatement.setString(++i, entity.getWhatsapp());
        preparedStatement.setString(++i, entity.getEmail());
        preparedStatement.setLong(++i, entity.getFk_Loja_id());

        ResultSet resultSet = preparedStatement.executeQuery();
        if (resultSet.next()) {
            entity.setId(resultSet.getLong("id"));
        }

        resultSet.close();
        preparedStatement.close();
    }

    @Override
    public Contato readById(Connection conn, Long id) throws Exception {
        String sql = "SELECT * FROM contato WHERE id=?;";
        
        PreparedStatement ps = conn.prepareStatement(sql);
        int i = 0;
        ps.setLong(++i, id);
        ResultSet rs = ps.executeQuery();
        Contato contato = null;
        if (rs.next()) {
            contato = new Contato();
            contato.setFixo(rs.getString("fixo"));
            contato.setCelular(rs.getString("celular"));
            contato.setWhatsapp(rs.getString("whatsapp"));
            contato.setEmail(rs.getString("email"));
            contato.setFk_Loja_id(rs.getLong("id"));
            
            
        }

        rs.close();
        ps.close();
        return contato;
    }

    @Override
    public List<Contato> readByCriteria(Connection conn, Map<Long, Object> criteria) throws Exception {
        List<Contato> contatoList = new ArrayList<>();

        List<Object> paramList = new ArrayList<>();
        String sql = "SELECT * FROM contato WHERE 1=1";
        if (criteria != null) {
            if (criteria.containsKey(ContatoCriteria.FIXO_EQ)) {
                sql += " AND fixo ilike ? ";
                paramList.add("%" + criteria.get(ContatoCriteria.FIXO_EQ) + "%");
            }
            if (criteria.containsKey(ContatoCriteria.CELULAR_EQ)) {
                sql += " AND celular ilike ? ";
                paramList.add("%" + criteria.get(ContatoCriteria.CELULAR_EQ) + "%");
            }
            if (criteria.containsKey(ContatoCriteria.WHATSAPP_EQ)) {
                sql += " AND whatsapp ilike ? ";
                paramList.add("%" + criteria.get(ContatoCriteria.WHATSAPP_EQ) + "%");
            }
            if (criteria.containsKey(ContatoCriteria.EMAIL_EQ)) {
                sql += " AND email =? ";
                paramList.add(criteria.get(ContatoCriteria.EMAIL_EQ));
            }
            if (criteria.containsKey(ContatoCriteria.LOJA_EQ)) {
                sql += " AND fk_loja_id = ? ";
                paramList.add(criteria.get(ContatoCriteria.LOJA_EQ));
            }
            
        }
        
        
        
        PreparedStatement preparedStatement = PreparedStatementBuilder.build(conn, sql, paramList);
        ResultSet resultSet = preparedStatement.executeQuery();
        while (resultSet.next()) {
            Contato contato = new Contato();
            contato.setFixo(resultSet.getString("fixo"));
            contato.setCelular(resultSet.getString("celular"));
            contato.setWhatsapp(resultSet.getString("whatsapp"));
            contato.setEmail(resultSet.getString("email"));
            contato.setFk_Loja_id(resultSet.getLong("fk_loja_id"));
            
            
            contatoList.add(contato);
        }
        resultSet.close();
        preparedStatement.close();
        return contatoList;
 

    }

    @Override
    public void update(Connection conn, Contato entity) throws Exception {
        String sql = "UPDATE contato SET id=?, fixo=?, celular=?, whatsapp=?, email=?, fk_loja_id=? WHERE id = ?;";

        PreparedStatement preparedStatement = conn.prepareStatement(sql);
        int i = 1;
        preparedStatement.setString(i++, entity.getFixo());
        preparedStatement.setString(i++, entity.getCelular());
        preparedStatement.setString(i++, entity.getWhatsapp());
        preparedStatement.setString(i++, entity.getEmail());
        
        
        preparedStatement.execute();
        preparedStatement.close();
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
