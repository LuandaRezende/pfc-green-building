
package greenbuilding.controller;

import greenbuilding.model.criteria.CategoriaCriteria;
import greenbuilding.model.entity.Categoria;
import greenbuilding.model.entity.Material;
import greenbuilding.model.entity.Tipo;
import greenbuilding.model.entity.Usuario;
import greenbuilding.model.service.CategoriaService;
import greenbuilding.model.service.MaterialService;
import greenbuilding.model.service.TipoService;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpSession;
import javax.websocket.server.PathParam;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CategoriaController {
    @RequestMapping(value = "/cadastroCategoria", method = RequestMethod.POST)
    public ModelAndView getDados(String nomeCategoria, String descricaoCategoria,String nomeTipo, String descricaoTipo, String nomeMaterial, String descricaoMaterial, String imagem, String fabricante, HttpSession session) {
    ModelAndView mv = null;   
    Categoria categoria = null;
    Tipo tipo = null;
    Material material = null;
    Usuario usuario = null;

        try {
            usuario = (Usuario) session.getAttribute("perfilAdm");
            CategoriaService categoriaService = new CategoriaService();
            categoria = new Categoria();
            categoria.setNome(nomeCategoria);
            categoria.setDescricao(descricaoCategoria);
            categoriaService.create(categoria);
            
            TipoService tipoService = new TipoService();
            tipo = new Tipo();
            tipo.setNome(nomeTipo);
            tipo.setDescricao(descricaoTipo);
            tipoService.create(tipo);
            
            MaterialService materialService = new MaterialService();
            material = new Material();
            material.setNome(nomeTipo);
            material.setDescricao(descricaoTipo);
            material.setFabricante(fabricante);
            material.setImagem(imagem);
            material.setFk_categoria_id(categoria.getId());
            material.setFk_tipo_id(tipo.getId());
            materialService.create(material);
            
            
            
             mv = new ModelAndView("/perfilAdm");
        } catch (Exception ex) {
            mv = new ModelAndView("error");
        }
        return mv;    
        
    }
    
    @RequestMapping(value = "/redirectCadastro", method = RequestMethod.GET)
    public ModelAndView directPerfil() {
        ModelAndView mv = new ModelAndView("/perfilAdm");
        //se campos vazios aparecer mensagem dizendo para preencher
        
        return mv;
    }
    
    @RequestMapping(value = "/categorias", method = RequestMethod.GET)
    public ModelAndView list() {
        
        ModelAndView mv = null;
        
        CategoriaService cs = new CategoriaService();
        
        try {
            List<Categoria> categoriaList = cs.read(null);
            mv = new ModelAndView("categoria/list");
            if (categoriaList.isEmpty()) {
                categoriaList = null;
            }
            mv.addObject("categoriaList", categoriaList);
        } catch (Exception ex) {
            mv = new ModelAndView("deu erro");
        }
        
        return mv;
        
    }
    
     @RequestMapping(value = "/categorias/novo", method = RequestMethod.GET)
    public ModelAndView createForm() {
        
        ModelAndView mv = null;
        
        CategoriaService cs = new CategoriaService();
        
        try {
            
            mv = new ModelAndView("categoria/cadastrar");
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
    
    @RequestMapping(value = "/categorias/novo", method = RequestMethod.POST)
    public ModelAndView create(Categoria categoria) {
        
        ModelAndView mv = null;
        
        CategoriaService cs = new CategoriaService();
        
        try {
            
            categoria.setNome(categoria.getNome());
            categoria.setDescricao(categoria.getDescricao());
            cs.create(categoria);
            mv = new ModelAndView("redirect:/categorias");
            
        } catch (Exception ex) {
            mv = new ModelAndView("deu erro");
        }
        
        return mv;
        
    }
    
    
//    @RequestMapping(value = "/login/perfil", method = RequestMethod.GET)
//    public ModelAndView getList() throws Exception {
//        
//        ModelAndView mv = new ModelAndView("perfilAdm");
//  
//        CategoriaService service = new CategoriaService();
//        
//        List<Categoria> categoriaList = service.read(null);
//
//        mv.addObject("categoriaList", categoriaList);
//
//        
//        return mv;
//    }
    
    
    @RequestMapping(value = "/categorias/{id}/delete", method = RequestMethod.GET)
    public ModelAndView delete(@PathVariable Long id) {
        
        ModelAndView mv = null;
        try {
            CategoriaService service = new CategoriaService();
            service.delete(id);
            mv = new ModelAndView("redirect:/categorias");
        } catch (Exception ex) {
            mv = new ModelAndView("error");
        }
        return mv;
        
    }
    
    @RequestMapping(value = "/categorias/{id}/update", method = RequestMethod.GET)
    public ModelAndView getFormForUpdate(@PathVariable Long id) {
        ModelAndView mv = null;
        try {
            CategoriaService service = new CategoriaService();
            Categoria categoria = service.readById(id);
            mv = new ModelAndView("categoria/cadastrar");
            mv.addObject("categoria", categoria);
        } catch (Exception ex) {
            mv = new ModelAndView("error");
        }
        return mv;
    }
    
    @RequestMapping(value = "/categorias/{id}/update", method = RequestMethod.POST)
    public ModelAndView update(@PathVariable Long id, Categoria categoria) {
        ModelAndView mv = null;
        try {
            CategoriaService service = new CategoriaService();
            categoria.setId(id);

            service.update(categoria);
            mv = new ModelAndView("redirect:/categorias");
        } catch (Exception ex) {
            mv = new ModelAndView("error");
        }
        return mv;
    }
}
