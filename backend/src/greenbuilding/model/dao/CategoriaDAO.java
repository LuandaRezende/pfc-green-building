/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package greenbuilding.model.dao;

import greenbuilding.PreparedStatementBuilder;
import greenbuilding.model.base.BaseDAO;
import greenbuilding.model.criteria.CategoriaCriteria;
import greenbuilding.model.entity.Categoria;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 *
 * @author sacha
 */
public class CategoriaDAO implements BaseDAO<Categoria>{

    @Override
    public void create(Connection conn, Categoria entity) throws Exception {
        String sql="INSERT INTO categoria(nome, descricao)VALUES (?, ?) RETURNING id;";
        
        int i = 0;
        PreparedStatement preparedStatement = conn.prepareStatement(sql);
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
    public Categoria readById(Connection conn, Long id) throws Exception {
        String sql = "SELECT * FROM categoria WHERE id=?;";
        
        PreparedStatement ps = conn.prepareStatement(sql);
        int i = 0;
        ps.setLong(++i, id);
        ResultSet rs = ps.executeQuery();
        Categoria categoria = null;
        if (rs.next()) {
            categoria = new Categoria();
            categoria.setId(rs.getLong("id"));
            categoria.setNome(rs.getString("nome"));
            categoria.setDescricao(rs.getString("descricao"));

        }

        rs.close();
        ps.close();
        return categoria;
    }

    @Override
    public List<Categoria> readByCriteria(Connection conn, Map<Long, Object> criteria) throws Exception {
        List<Categoria> categoriaList = new ArrayList<>();

        List<Object> paramList = new ArrayList<>();
        String sql = "SELECT * FROM categoria WHERE 1=1";
        if (criteria != null) {
            if (criteria.containsKey(CategoriaCriteria.NOME_EQ)) {
                sql += " AND nome ilike ? ";
                paramList.add("%" + criteria.get(CategoriaCriteria.NOME_EQ) + "%");
            }
            if (criteria.containsKey(CategoriaCriteria.DESCRICAO_EQ)) {
                sql += " AND descricao =? ";
                paramList.add(criteria.get(CategoriaCriteria.DESCRICAO_EQ));
            }
            
        }
        
        PreparedStatement preparedStatement = PreparedStatementBuilder.build(conn, sql, paramList);
        ResultSet resultSet = preparedStatement.executeQuery();
        while (resultSet.next()) {
            Categoria categoria = new Categoria();
            categoria.setId(resultSet.getLong("id"));
            categoria.setNome(resultSet.getString("nome"));
            categoria.setDescricao(resultSet.getString("descricao"));
            categoriaList.add(categoria);
        }
        resultSet.close();
        preparedStatement.close();
        return categoriaList;
    }

    @Override
    public void update(Connection conn, Categoria entity) throws Exception {
        String sql = "UPDATE categoria SET nome=?, descricao=? WHERE id = ?;";

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
        String sql = "DELETE FROM categoria WHERE id = ?;";
        PreparedStatement preparedStatement = conn.prepareStatement(sql);
        preparedStatement.setLong(1, id);
        preparedStatement.execute();
        preparedStatement.close();
    }
    
}
