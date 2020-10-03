package greenbuilding.model.dao;

import greenbuilding.PreparedStatementBuilder;
import greenbuilding.model.base.BaseDAO;
import greenbuilding.model.criteria.CategoriaCriteria;
import greenbuilding.model.criteria.MaterialCriteria;
import greenbuilding.model.entity.Categoria;
import greenbuilding.model.entity.Material;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class MaterialDAO implements BaseDAO<Material> {

    @Override
    public void create(Connection conn, Material entity) throws Exception {
        String sql = "INSERT INTO material(nome, descricao, imagem, fabricante, fk_tipo_id, fk_categoria_id) VALUES (?, ?, ?, ?, ?, ?) returning id;";

        int i = 0;
        PreparedStatement preparedStatement = conn.prepareStatement(sql);
        preparedStatement.setString(++i, entity.getNome());
        preparedStatement.setString(++i, entity.getDescricao());
        preparedStatement.setString(++i, entity.getImagem());
        preparedStatement.setString(++i, entity.getFabricante());
        preparedStatement.setLong(++i, entity.getFk_tipo_id());
        preparedStatement.setLong(++i, entity.getFk_categoria_id());

        ResultSet resultSet = preparedStatement.executeQuery();
        if (resultSet.next()) {
            entity.setId(resultSet.getLong("id"));
        }

        resultSet.close();
        preparedStatement.close();

    }

    @Override
    public Material readById(Connection conn, Long id) throws Exception {
        String sql = "SELECT * FROM material WHERE id=?;";

        PreparedStatement ps = conn.prepareStatement(sql);
        int i = 0;
        ps.setLong(++i, id);
        ResultSet rs = ps.executeQuery();
        Material material = null;
        if (rs.next()) {
            material = new Material();
            material.setId(rs.getLong("id"));
            material.setNome(rs.getString("nome"));
            material.setDescricao(rs.getString("descricao"));
            material.setImagem(rs.getString("imagem"));
            material.setFabricante(rs.getString("fabricante"));
            material.setFk_tipo_id(rs.getLong("fk_tipo_id"));
            material.setFk_categoria_id(rs.getLong("fk_categoria_id"));          
            
        }

        rs.close();
        ps.close();
        return material;
    }

    @Override
    public List<Material> readByCriteria(Connection conn, Map<Long, Object> criteria) throws Exception {
        List<Material> materialList = new ArrayList<>();
        Material material = null;
        List<Object> paramList = new ArrayList<>();
        String sql = "SELECT * FROM material WHERE 1=1";
        if (criteria != null) {
            if (criteria.containsKey(CategoriaCriteria.NOME_EQ)) {
                sql += " AND nome ilike ? ";
                paramList.add("%" + criteria.get(MaterialCriteria.NOME_EQ) + "%");
            }
            if (criteria.containsKey(MaterialCriteria.DESCRICAO_EQ)) {
                sql += " AND descricao ilike ? ";
                paramList.add("%" + criteria.get(MaterialCriteria.DESCRICAO_EQ));
            }
            if (criteria.containsKey(MaterialCriteria.FABRICANTE_EQ)) {
                sql += " AND fabricante ilike ? ";
                paramList.add("%" + criteria.get(MaterialCriteria.FABRICANTE_EQ));
            }
        }

        PreparedStatement preparedStatement = PreparedStatementBuilder.build(conn, sql, paramList);
        ResultSet resultSet = preparedStatement.executeQuery();
        while (resultSet.next()) {
            material = new Material();
            material.setId(resultSet.getLong("id"));
            material.setFk_tipo_id(resultSet.getLong("fk_tipo_id"));
            material.setFk_categoria_id(resultSet.getLong("fk_categoria_id"));
            material.setNome(resultSet.getString("nome"));
            material.setImagem(resultSet.getString("imagem"));
            material.setDescricao(resultSet.getString("descricao"));
            material.setFabricante(resultSet.getString("fabricante"));
            materialList.add(material);
        }
        resultSet.close();
        preparedStatement.close();
        return materialList;
    }

    @Override
    public void update(Connection conn, Material entity) throws Exception {
        String sql = "UPDATE material SET nome=?, descricao=?, imagem=?, fabricante=?, fk_tipo_id=?, fk_categoria_id=? WHERE id = ?;";

        PreparedStatement preparedStatement = conn.prepareStatement(sql);
        int i = 0;
        preparedStatement.setString(++i, entity.getNome());
        preparedStatement.setString(++i, entity.getDescricao());
        preparedStatement.setString(++i, entity.getImagem());
        preparedStatement.setString(++i, entity.getFabricante());
        preparedStatement.setLong(++i, entity.getFk_tipo_id());
        preparedStatement.setLong(++i, entity.getFk_categoria_id());
        preparedStatement.setLong(++i, entity.getId());
        preparedStatement.execute();
        preparedStatement.close();
    }

    @Override
    public void delete(Connection conn, Long id) throws Exception {
        String sql = "DELETE FROM material WHERE id = ?;";
        PreparedStatement preparedStatement = conn.prepareStatement(sql);
        preparedStatement.setLong(1, id);
        preparedStatement.execute();
        preparedStatement.close();
    }

}
