package greenbuilding;

import greenbuilding.model.criteria.AnunciaCriteria;
import greenbuilding.model.entity.Anuncia;
import greenbuilding.model.service.AnunciaService;
import greenbuilding.model.service.LojaService;
import greenbuilding.model.service.MaterialService;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Main {

    public static void main(String[] args) throws SQLException, Exception {
//        Connection conn = ConnectionManager.getInstance().getConnection();

        MaterialService ms = new MaterialService();
        
        LojaService ls = new LojaService();
        
        AnunciaService as = new AnunciaService();
        
        Map<Long, Object> criteria = new HashMap<>();
        
        criteria.put(AnunciaCriteria.NOME_MATERIAL_ILIKE, "tel");
        
        List<Anuncia> aList = as.read(criteria);
        
        for(Anuncia aux: aList){
            System.out.println(aux.getMaterial().getNome());
        }
        
//        Loja loja = ls.readById(1L);
        
//        System.out.println(loja.getNome_loja());
//        
//        Material m = ms.readById(2L);
//        
//           System.out.println(m.getId());
//        
//        
//        m.setDescricao("ok");
//        
//        ms.update(m);
//        
//        Material m2 = ms.readById(2L);
//        
//        System.out.println(m2.getDescricao());


//        Teste exibição de lojas cadastradsa
//        LojaDAO ld = new LojaDAO();
//        LojaCriteria lc = new LojaCriteria();
//        LojaService ls = new LojaService();
//        Map<Long, Object> criteriaLoja = new HashMap<>();
//        List<Loja> lojaList = ls.read(criteriaLoja);
//        for (Loja loja: lojaList) {
//            System.out.println("nome_loja" + loja.getNome_loja() + "\n\n");
//            System.out.println("cnpj" + loja.getCnpj() + "\n\n");
//
//        }
//        Teste exibição de Tipo
//        TipoDAO td = new TipoDAO();
//        TipoCriteria tc = new TipoCriteria();
//        TipoService ts = new TipoService();
//        Map<Long, Object> criteriaTipo = new HashMap<>();
//        List<Tipo> tipoList = ts.read(criteriaTipo);
//        for (Tipo tipo: tipoList) {
//            System.out.println("nome" + tipo.getNome() + "\n\n");
//            System.out.println("descricao" + tipo.getDescricao() + "\n\n");
//
//        }
        //  Teste exibição de categoria
//        CategoriaDAO cd = new CategoriaDAO();
//        CategoriaCriteria cc = new CategoriaCriteria();
//        CategoriaService cs = new CategoriaService();
//        Map<Long, Object> criteriaCategoria = new HashMap<>();
//        List<Categoria> categoriaList = cs.read(criteriaCategoria);
//        for (Categoria categoria : categoriaList) {
//            System.out.println("nome" + categoria.getNome() + "\n\n");
//            System.out.println("descricao" + categoria.getDescricao() + "\n\n");
//
//        }
//        Teste exibição de material
//        MaterialDAO md = new MaterialDAO();
//        MaterialCriteria mc = new MaterialCriteria();
//        MaterialService matServ = new MaterialService();
//        Map<Long, Object> criteria = new HashMap<>();
//        List<Material> materialList = matServ.read(criteria);
//        for (Material material : materialList) {
//            System.out.println("nome" + material.getNome() + "\n\n");
//            System.out.println("descricao" + material.getDescricao() + "\n\n");
//            System.out.println("fabricante" + material.getFabricante() + "\n\n");
//
//        }
//        
//        Categoria categoria = null;
//        CategoriaService cs = new CategoriaService();
//        CategoriaCriteria categoriaCriteria = new CategoriaCriteria();
//        Map<Long, Object> criteria = new HashMap<>();
//         List<Categoria> categoriaList = cs.read(criteria);
//        categoriaList.add(categoria);
//        teste criacao usuario
//        Usuario user = new Usuario();
//        user.setId(1L);
//        user.setEmail("teste@teste.com");
//        user.setSenha("123456");
//        user.setTipo(true);
//        user.setSituacao(true);                
//            
//        UsuarioDAO userDAO = new UsuarioDAO();
//        userDAO.create(conn, user);
//        Usuario newUser = userDAO.readById(conn, 1L);
//          conn.commit();
//        teste criacao loja
//        Loja loja = new Loja();
//        loja.setId(1L);
//        loja.setNome_loja("ConstroUai");
//        loja.setCnpj("12354");
//        loja.setFk_usuario_id(1L);
//        
//        LojaDAO lojaDAO = new LojaDAO();
//        lojaDAO.create(conn, loja);
//        conn.commit();
        //teste criacao administrador       
//        Administrador adm = new Administrador();
//        adm.setFk_usuario_id(1L);
//        
//        AdministradorDAO admDAO = new AdministradorDAO();
//        admDAO.create(conn, adm);
//        conn.commit();
        //testar criacao pratica sustentavel
//        PraticaSustentavel ps = new PraticaSustentavel();
//        ps.setDescricao("descricao criada");
//        ps.setImagem("imagem");
//        ps.setFk_Administrador_id(1L);
//        
//        PraticaSustentavelDAO psDAO = new PraticaSustentavelDAO();
//        psDAO.create(conn, ps);
//        conn.commit();
        //teste criacao categoria
//        Categoria cat = new Categoria();
//        cat.setNome("barro");
//        cat.setDescricao("barro de cera");
//        cat.setId(1L);
//        
//        CategoriaDAO catDAO = new CategoriaDAO();
//        catDAO.create(conn, cat);
//        conn.commit();
        //teste criacao tipo
//        Tipo tipo = new Tipo();
//        tipo.setNome("tipo A");
//        tipo.setDescricao("barro do tipo A");
//        
//        TipoDAO tipoDAO = new TipoDAO();
//        tipoDAO.create(conn, tipo);
//        conn.commit();
        //teste criacao material
//        Material material = new Material();
//        material.setId(1L);
//        material.setNome("tijolo");
//        material.setDescricao("tijo de barro");
//        material.setImagem("imagem");
//        material.setFabricante("fabricante");
//        material.setFk_tipo_id(1L);
//        material.setFk_categoria_id(1L);
//        
//        MaterialDAO materialDAO = new MaterialDAO();
//        materialDAO.create(conn, material);
//        conn.commit();
        //teste criacao contato
//        Contato cont = new Contato();
//        cont.setId(1L);
//        cont.setFixo("4781-8657");
//        cont.setCelular("359864-7827");
//        cont.setWhatsapp("9864-7827");
//        cont.setEmail("teste@gmail.com");
//        cont.setFk_Loja_id(1L);
//        
//        ContatoDAO contDAO = new ContatoDAO();
//        contDAO.create(conn, cont);
//        conn.commit();
//
//
//        //teste criacao anuncio
//        Anuncia anuncia = new Anuncia();
//        anuncia.setValor("10,00");
//        anuncia.setQtd_clique(5);
//        anuncia.setStatus_anuncio(true);
//        anuncia.setQtd_estoque(5);
//        anuncia.setObservacao("ja observado");
//        anuncia.setFk_material_id(1L);
//        anuncia.setFk_loja_id(1L);
//        
//       AnunciaDAO anunciaDAO = new AnunciaDAO();
//       anunciaDAO.create(conn, anuncia);
//       conn.commit();
// 
//       // teste criacao material_pratica_sustentavel
//        MaterialPraticaSustentavel mps = new MaterialPraticaSustentavel();
//        mps.setFk_material_id(1L);
//        
//        MaterialPraticaSustentavelDAO mpsDAO = new MaterialPraticaSustentavelDAO();
//        mpsDAO.create(conn, mps);
//        conn.commit();
    }

}
