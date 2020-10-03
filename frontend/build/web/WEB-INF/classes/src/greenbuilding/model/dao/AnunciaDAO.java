/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package greenbuilding.model.dao;

import greenbuilding.PreparedStatementBuilder;
import greenbuilding.model.base.BaseDAO;
import greenbuilding.model.criteria.AnunciaCriteria;
import greenbuilding.model.criteria.MaterialCriteria;
import greenbuilding.model.entity.Anuncia;
import greenbuilding.model.entity.Contato;
import greenbuilding.model.entity.Material;
import greenbuilding.model.service.ContatoService;
import greenbuilding.model.service.MaterialService;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;


public class AnunciaDAO implements BaseDAO<Anuncia>{

    @Override
    public void create(Connection conn, Anuncia entity) throws Exception {
    String sql = "INSERT INTO anuncia(valor, qtd_clique, status_anuncio, qtd_estoque, observacao, fk_material_id, fk_loja_id)	VALUES (?, ?, ?, ?, ?, ?, ?);";
    
        int i = 0;
        PreparedStatement preparedStatement = conn.prepareStatement(sql);
        preparedStatement.setString(++i, entity.getValor());
        preparedStatement.setInt(++i, entity.getQtd_clique());
        preparedStatement.setBoolean(++i, entity.getStatus_anuncio());
        preparedStatement.setInt(++i, entity.getQtd_estoque());
        preparedStatement.setString(++i, entity.getObservacao());
        preparedStatement.setLong(++i, entity.getFk_material_id());
        
        preparedStatement.setLong(++i, entity.getFk_loja_id());
        
        preparedStatement.execute();

//        ResultSet resultSet = preparedStatement.executeQuery();
//        if (resultSet.next()) {
//            entity.setId(resultSet.getLong("id"));
//        }
//
//        resultSet.close();
        preparedStatement.close();
    
    }

    @Override
    public Anuncia readById(Connection conn, Long id) throws Exception {
        String sql = "SELECT * FROM anuncia WHERE id=?;";

        PreparedStatement ps = conn.prepareStatement(sql);
        int i = 0;
        ps.setLong(++i, id);
        ResultSet rs = ps.executeQuery();
        Anuncia anuncia = null;
        if (rs.next()) {
            anuncia = new Anuncia();
            anuncia.setValor(rs.getString("valor"));
            anuncia.setQtd_clique(rs.getInt("qtd_clique"));
            anuncia.setStatus_anuncio(rs.getBoolean("status_anuncio"));
            anuncia.setQtd_estoque(rs.getInt("qtd_estoque"));
            anuncia.setObservacao(rs.getString("observacao"));
            anuncia.setFk_material_id(rs.getLong("fk_material_id"));
            anuncia.setFk_loja_id(rs.getLong("fk_loja_id"));
            
        }

        rs.close();
        ps.close();

        return anuncia;
    }

    @Override
    public List<Anuncia> readByCriteria(Connection conn, Map<Long, Object> criteria) throws Exception {
        List<Anuncia> anunciaList = new ArrayList<>();
        Anuncia anuncia = null;
        List<Object> paramList = new ArrayList<>();
        String sql = "SELECT anuncia.*, material.nome AS material_nome FROM anuncia JOIN material ON anuncia.fk_material_id = material.id WHERE 1=1";
        if (criteria != null) {
            if (criteria.containsKey(AnunciaCriteria.VALOR_EQ)) {
                sql += " AND valor ilike ? ";
                paramList.add("%" + criteria.get(AnunciaCriteria.VALOR_EQ) + "%");
            }
            if (criteria.containsKey(AnunciaCriteria.QTD_ESTOQUE_EQ)) {
                sql += " AND qtd_estoque ilike ? ";
                paramList.add("%" + criteria.get(AnunciaCriteria.QTD_ESTOQUE_EQ));
            }
            if (criteria.containsKey(AnunciaCriteria.OBSERVACAO_EQ)) {
                sql += " AND observacao ilike ? ";
                paramList.add("%" + criteria.get(AnunciaCriteria.OBSERVACAO_EQ));
            }
            
            if (criteria.containsKey(AnunciaCriteria.NOME_MATERIAL_ILIKE)) {
                sql += " AND material.nome ilike ? ";
                paramList.add("%" + criteria.get(AnunciaCriteria.NOME_MATERIAL_ILIKE) + "%");
            }
        }

        PreparedStatement preparedStatement = PreparedStatementBuilder.build(conn, sql, paramList);
        ResultSet rs = preparedStatement.executeQuery();
        while (rs.next()) {
            anuncia = new Anuncia();
            anuncia.setValor(rs.getString("valor"));
            anuncia.setQtd_clique(rs.getInt("qtd_clique"));
            anuncia.setStatus_anuncio(rs.getBoolean("status_anuncio"));
            anuncia.setQtd_estoque(rs.getInt("qtd_estoque"));
            anuncia.setObservacao(rs.getString("observacao"));
            anuncia.setFk_material_id(rs.getLong("fk_material_id"));
            anuncia.setFk_loja_id(rs.getLong("fk_loja_id"));
            MaterialService ms = new MaterialService();
            Material material = ms.readById(rs.getLong("fk_material_id"));
            anuncia.setMaterial(material);
            anunciaList.add(anuncia);
            
            
            
        }
        rs.close();
        preparedStatement.close();
        return anunciaList;
    }
    
    @Override
    public void update(Connection conn, Anuncia entity) throws Exception {
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
