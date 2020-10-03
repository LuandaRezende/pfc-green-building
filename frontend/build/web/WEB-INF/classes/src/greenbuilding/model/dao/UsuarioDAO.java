package greenbuilding.model.dao;

import greenbuilding.PreparedStatementBuilder;
import greenbuilding.model.base.BaseDAO;
import greenbuilding.model.entity.Usuario;
import greenbuilding.model.base.BaseEntity;
import greenbuilding.model.criteria.UsuarioCriteria;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class UsuarioDAO implements BaseDAO<Usuario> {

    @Override
    public void create(Connection conn, Usuario entity) throws Exception {
        String sql = "INSERT INTO usuario(email, senha, tipo, situacao) VALUES (?,?,?,?) RETURNING id";

        int i = 0;
        PreparedStatement preparedStatement = conn.prepareStatement(sql);
//        preparedStatement.setLong(++i, entity.getId());
        preparedStatement.setString(++i, entity.getEmail());
        preparedStatement.setString(++i, entity.getSenha());
        preparedStatement.setBoolean(++i, entity.getTipo());
        preparedStatement.setBoolean(++i, entity.getSituacao());

        ResultSet resultSet = preparedStatement.executeQuery();
        if (resultSet.next()) {
            entity.setId(resultSet.getLong("id"));
        }

        resultSet.close();
        preparedStatement.close();
    }

    @Override
    public Usuario readById(Connection conn, Long id) throws Exception {
        String sql = "SELECT * FROM usuario WHERE id=?;";

        PreparedStatement ps = conn.prepareStatement(sql);
        int i = 0;
        ps.setLong(++i, id);
        ResultSet rs = ps.executeQuery();
        Usuario usuario = null;
        if (rs.next()) {
            usuario = new Usuario();
            usuario.setEmail(rs.getString("email"));
            usuario.setSenha(rs.getString("senha"));
            usuario.setTipo(rs.getBoolean("tipo"));
            usuario.setSituacao(rs.getBoolean("situacao"));
        }

        rs.close();
        ps.close();
        return usuario;
    }

    @Override
    public List<Usuario> readByCriteria(Connection conn, Map<Long, Object> criteria) throws Exception {
        List<Usuario> usuarioList = new ArrayList<>();

        List<Object> paramList = new ArrayList<>();
        String sql = "SELECT * FROM usuario WHERE 1=1";
        if (criteria != null) {
            if (criteria.containsKey(UsuarioCriteria.EMAIL_EQ)) {
                sql += " AND email ilike ? ";
                paramList.add("%" + criteria.get(UsuarioCriteria.EMAIL_EQ) + "%");
            }
            if (criteria.containsKey(UsuarioCriteria.SENHA_EQ)) {
                sql += " AND senha =? ";
                paramList.add(criteria.get(UsuarioCriteria.SENHA_EQ));
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
            Usuario usuario = new Usuario();
            usuario.setId(resultSet.getLong("id"));
            usuario.setEmail(resultSet.getString("email"));
            usuario.setSenha(resultSet.getString("senha"));
            usuario.setTipo(resultSet.getBoolean("tipo"));
            usuario.setSituacao(resultSet.getBoolean("situacao"));
            usuarioList.add(usuario);
        }
        resultSet.close();
        preparedStatement.close();
        return usuarioList;
    }

    @Override
    public void update(Connection conn, Usuario entity) throws Exception {
        String sql = "UPDATE usuario SET id=?, email=?, senha=?, tipo=?, situacao=? WHERE id = ?;";

        PreparedStatement preparedStatement = conn.prepareStatement(sql);
        int i = 1;
        preparedStatement.setString(i++, entity.getEmail());
        preparedStatement.setString(i++, entity.getSenha());
        preparedStatement.setBoolean(i++, entity.getTipo());
        preparedStatement.setBoolean(i++, entity.getSituacao());
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
