/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package greenbuilding.controller;

import greenbuilding.model.entity.Tipo;
import greenbuilding.model.entity.Usuario;
import greenbuilding.model.service.TipoService;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TipoController {
    @RequestMapping(value = "/cadastroTipo", method = RequestMethod.POST)
    public ModelAndView getDados(String nomeTipo, String descricaoTipo, HttpSession session) {
    ModelAndView mv = null;   
    Tipo tipo = null;
    Usuario usuario = null;
        List<Tipo> tipoList = new ArrayList<>();
        try {
            usuario = (Usuario) session.getAttribute("perfilAdm");
            TipoService service = new TipoService();
            tipo = new Tipo();
            tipo.setNome(nomeTipo);
            tipo.setDescricao(descricaoTipo);
            service.create(tipo);
            tipoList.add(tipo);
             mv = new ModelAndView("/perfilAdm");
        } catch (Exception ex) {
            mv = new ModelAndView("error");
        }
        return mv;    
    }
    
//     @RequestMapping(value = "/login/perfil", method = RequestMethod.GET)
//    public ModelAndView getList() throws Exception {
//        
//        ModelAndView mv = new ModelAndView("perfilAdm");
//  
//        TipoService service = new TipoService();
//        
//        List<Tipo> tipoList = service.read(null);
//
//        mv.addObject("tipoList", tipoList);
//
//        
//        return mv;
//    }
    
    
     @RequestMapping(value = "/tipos", method = RequestMethod.GET)
    public ModelAndView list() {
        
        ModelAndView mv = null;
        
        TipoService ts = new TipoService();
        
        try {
            List<Tipo> tipoList = ts.read(null);
            mv = new ModelAndView("tipo/list");
            if (tipoList.isEmpty()) {
                tipoList = null;
            }
            mv.addObject("tipoList", tipoList);
        } catch (Exception ex) {
            mv = new ModelAndView("deu erro");
        }
        
        return mv;
        
    }
    
     @RequestMapping(value = "/tipos/novo", method = RequestMethod.GET)
    public ModelAndView createForm() {
        
        ModelAndView mv = null;
        
        TipoService ts = new TipoService();
        
        try {
            
            mv = new ModelAndView("tipo/cadastrarTipo");
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
    
    @RequestMapping(value = "/tipos/novo", method = RequestMethod.POST)
    public ModelAndView create(Tipo tipo) {
        
        ModelAndView mv = null;
        
        TipoService ts = new TipoService();
        
        try {
            tipo.setNome(tipo.getNome());
            tipo.setDescricao(tipo.getDescricao());
            ts.create(tipo);
            mv = new ModelAndView("redirect:/tipos");
            
        } catch (Exception ex) {
            mv = new ModelAndView("deu erro");
        }
        
        return mv;
        
    }
    
    @RequestMapping(value = "/tipos/{id}/delete", method = RequestMethod.GET)
    public ModelAndView delete(@PathVariable Long id) {
        
        ModelAndView mv = null;
        try {
            TipoService service = new TipoService();
            service.delete(id);
            mv = new ModelAndView("redirect:/tipos");
        } catch (Exception ex) {
            mv = new ModelAndView("error");
        }
        return mv;
        
    }
    
    @RequestMapping(value = "/tipos/{id}/update", method = RequestMethod.GET)
    public ModelAndView getFormForUpdate(@PathVariable Long id) {
        ModelAndView mv = null;
        try {
            TipoService service = new TipoService();
            Tipo tipo = service.readById(id);
            mv = new ModelAndView("tipo/cadastrarTipo");
            mv.addObject("tipo", tipo);
        } catch (Exception ex) {
            mv = new ModelAndView("error");
        }
        return mv;
    }
    
    @RequestMapping(value = "/tipos/{id}/update", method = RequestMethod.POST)
    public ModelAndView update(@PathVariable Long id, Tipo tipo) {
        ModelAndView mv = null;
        try {
            TipoService service = new TipoService();
            
            tipo.setId(id);

            service.update(tipo);
            mv = new ModelAndView("redirect:/tipos");
        } catch (Exception ex) {
            mv = new ModelAndView("n foi");
        }
        return mv;
    }
}
