package greenbuilding.controller;

import static greenbuilding.model.criteria.CategoriaCriteria.DESCRICAO_EQ;
import static greenbuilding.model.criteria.CategoriaCriteria.NOME_EQ;
import greenbuilding.model.criteria.ContatoCriteria;
import greenbuilding.model.criteria.LojaCriteria;
import greenbuilding.model.criteria.MaterialCriteria;
import greenbuilding.model.entity.Anuncia;
import greenbuilding.model.entity.Categoria;
import greenbuilding.model.entity.Contato;
import greenbuilding.model.entity.Loja;
import greenbuilding.model.entity.Material;
import greenbuilding.model.entity.Tipo;
import greenbuilding.model.entity.Usuario;
import greenbuilding.model.service.AnunciaService;
import greenbuilding.model.service.CategoriaService;
import greenbuilding.model.service.ContatoService;
import greenbuilding.model.service.LojaService;
import greenbuilding.model.service.MaterialService;
import greenbuilding.model.service.TipoService;
import greenbuilding.model.service.UsuarioService;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MaterialController {
    
    @RequestMapping(value = "/cadastroMaterialAdm", method = RequestMethod.POST)
    public ModelAndView getDados(String nomeMaterial, String descricaoMaterial, String imagem, String fabricante, HttpSession session) {
        ModelAndView mv = null;
        Usuario usuario = null;
        Categoria categoria = null;
        Tipo tipo = null;
        
        try {
            usuario = (Usuario) session.getAttribute("perfil");
            categoria = (Categoria) session.getAttribute("perfil");
            MaterialService service = new MaterialService();
            Material material = new Material();
            material.setNome(nomeMaterial);
            material.setDescricao(descricaoMaterial);
            material.setImagem(imagem);
            material.setFabricante(fabricante);
            material.setFk_categoria_id(categoria.getId());
            material.setFk_tipo_id(tipo.getId());
            service.create(material);
            mv = new ModelAndView("/perfilAdm");
        } catch (Exception ex) {
            mv = new ModelAndView("error");
        }
        return mv;
    }
     @RequestMapping(value = "/materiais/lojista/novo", method = RequestMethod.GET)
    public ModelAndView createForm(HttpSession session) {
        
        ModelAndView mv = null;
        AnunciaService anunciaService = new AnunciaService();
        MaterialService materialService = new MaterialService();
         // ContatoService cs = new ContatoService();
        try {
            
            mv = new ModelAndView("/material/cadastroLojista");
            mv.addObject("materiais", materialService.read(null));
            //mv.addObject("contatos", cs.read(null));

        } catch (Exception ex) {
            mv = new ModelAndView("deu erro");
        }
        
        return mv;
        
    }
    
    @RequestMapping(value = "/materiais/lojista/novo", method = RequestMethod.POST)
    public ModelAndView create(Long material,String valor, String observacao,Integer qtd_estoque, HttpSession session) {
        
        ModelAndView mv = null;
        Loja loja = null;
       
        Usuario usuario = (Usuario) session.getAttribute("perfil");
        LojaService lojaService = new LojaService();
        Map<Long, Object> lojaCriteria = new HashMap<>();
        lojaCriteria.put(LojaCriteria.FK_USUARIO_ID_EQ, usuario.getId());
      
       
        try {
            AnunciaService as = new AnunciaService();
            List<Loja> lojaList = lojaService.read(lojaCriteria);
            loja = lojaList.get(0);
         
            Anuncia anuncio = new Anuncia();
            anuncio.setStatus_anuncio(true);   
            anuncio.setQtd_clique(1);
            anuncio.setValor(valor); 
            anuncio.setObservacao(observacao);            
            anuncio.setQtd_estoque(qtd_estoque);            
            anuncio.setFk_loja_id(loja.getId());
            anuncio.setFk_material_id(material);
        
          

            as.create(anuncio);
            mv = new ModelAndView("redirect:/lojista/materiais");
            
        } catch (Exception ex) {
            mv = new ModelAndView("deu erro");
        }
        
        return mv;
        
    }
    
    @RequestMapping(value = "/lojista/materiais", method = RequestMethod.GET)
    public ModelAndView listMateriais() {
        
        ModelAndView mv = null;
        
        AnunciaService ls = new AnunciaService();
        MaterialService materialService = new MaterialService();
        ContatoService contatoService = new ContatoService();
        LojaService lojaService = new LojaService();
        
        
        try {
            List<Anuncia> anunciaList = ls.read(null);
            mv = new ModelAndView("/material/listLojista");
            if (anunciaList.isEmpty()) {
                anunciaList = null;
            }
            
            mv.addObject("anunciaList", anunciaList);
            mv.addObject("materiais", materialService.read(null));
            mv.addObject("contatos", contatoService.read(null));
            mv.addObject("lojas", lojaService.read(null));
            
        } catch (Exception ex) {
            mv = new ModelAndView("deu erro");
        }
        
        return mv;
        
    }
    
    
    @RequestMapping(value = "/materiais/{id}/delete", method = RequestMethod.GET)
    public ModelAndView delete(@PathVariable Long id) {
        
        ModelAndView mv = null;
        try {
            MaterialService service = new MaterialService();
            service.delete(id);
            mv = new ModelAndView("redirect:/materiais");
        } catch (Exception ex) {
            mv = new ModelAndView("error");
        }
        return mv;
        
    }
    
    @RequestMapping(value = "/materiais/{id}/update", method = RequestMethod.GET)
    public ModelAndView getFormForUpdate(@PathVariable Long id) {
        ModelAndView mv = null;
        TipoService tipoService = new TipoService();
        
        try {
            MaterialService service = new MaterialService();
            Material material = service.readById(id);
            mv = new ModelAndView("material/cadastrar");
            mv.addObject("material", material);
            mv.addObject("tipos", tipoService.read(null));
        } catch (Exception ex) {
            mv = new ModelAndView("error");
        }
        return mv;
    }
    
    @RequestMapping(value = "/materiais/{id}/update", method = RequestMethod.POST)
    public ModelAndView update(@PathVariable Long id, Material material) {
        ModelAndView mv = null;
        try {
            MaterialService service = new MaterialService();
            material.setFk_categoria_id(2L);
            service.update(material);
            mv = new ModelAndView("redirect:/materiais");
        } catch (Exception ex) {
            mv = new ModelAndView("error");
        }
        return mv;
    }
    
    
    @RequestMapping(value = "/materiais", method = RequestMethod.GET)
    public ModelAndView list() {
        
        ModelAndView mv = null;
        
        MaterialService ls = new MaterialService();
        CategoriaService categoriaService = new CategoriaService();
        TipoService tipoService = new TipoService();
        
        
        try {
            List<Material> materialList = ls.read(null);
            mv = new ModelAndView("material/list");
            if (materialList.isEmpty()) {
                materialList = null;
            }
            mv.addObject("materialList", materialList);
            mv.addObject("tipos", tipoService.read(null));
            mv.addObject("categorias", categoriaService.read(null));
        } catch (Exception ex) {
            mv = new ModelAndView("deu erro");
        }
        
        return mv;
        
    }
    
    @RequestMapping(value = "/materiais/novo", method = RequestMethod.GET)
    public ModelAndView createMaterial() {
        
        ModelAndView mv = null;
        
        MaterialService ls = new MaterialService();
        TipoService tipoService = new TipoService();
        CategoriaService categoriaService = new CategoriaService();
        try {
            
            mv = new ModelAndView("material/cadastrar");
            mv.addObject("tipos", tipoService.read(null));
            mv.addObject("categorias", categoriaService.read(null));
//             List<Material> materialList = ls.read(null);
//            if (materialList.isEmpty()) {
//                materialList = null;
//            }
//            mv.addObject("materialList", materialList);
        } catch (Exception ex) {
            mv = new ModelAndView("deu erro");
        }
        
        return mv;
      }
    
    
      @RequestMapping(value = "/materiais/novo", method = RequestMethod.POST)
    public ModelAndView createMaterial(Material material) {
        
        ModelAndView mv = null;
        
        
        try {  
            MaterialService ms = new MaterialService();
            //material.setFk_categoria_id(2L);
            //material.setFk_tipo_id(2L);
            ms.create(material);
            mv = new ModelAndView("redirect:/materiais");
            
        } catch (Exception ex) {
            mv = new ModelAndView("deu erro");
        }
        
        return mv;
        
        }
   }
    
