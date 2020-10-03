package greenbuilding.controller;

import greenbuilding.model.entity.Contato;
import greenbuilding.model.entity.Loja;
import greenbuilding.model.entity.Usuario;
import greenbuilding.model.service.ContatoService;
import greenbuilding.model.service.LojaService;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LojaController {

    @RequestMapping(value = "/cadastroLoja", method = RequestMethod.GET)
    public ModelAndView getForm() {
        ModelAndView mv = new ModelAndView("/cadastroLoja");
        return mv;
    }

    @RequestMapping(value = "/cadastroLoja", method = RequestMethod.POST)
    public ModelAndView create(String nomeLoja, String cnpj, String fixo, String celular, String whatsapp, String email, HttpSession session) {
        ModelAndView mv = null;
        Usuario usuario = null;
        Contato contatoLoja = null;

        try {
            usuario = (Usuario) session.getAttribute("perfil");

            LojaService service = new LojaService();
            Loja loja = new Loja();
            loja.setNome_loja(nomeLoja);
            loja.setCnpj(cnpj);
            loja.setFk_usuario_id(usuario.getId());
            service.create(loja);

            ContatoService contatoService = new ContatoService();
            contatoLoja = new Contato();
            contatoLoja.setFixo(fixo);
            contatoLoja.setCelular(celular);
            contatoLoja.setWhatsapp(whatsapp);
            contatoLoja.setEmail(email);
            contatoLoja.setFk_Loja_id(loja.getId());
            contatoService.create(contatoLoja);

            mv = new ModelAndView("perfil"); 
        } catch (Exception ex) {
            mv = new ModelAndView("error");
        }
        return mv;
    }
    
    @RequestMapping(value = "/cadastroLojaLojista", method = RequestMethod.POST)
    public ModelAndView createLojista(String nomeLoja, String cnpj, String fixo, String celular, String whatsapp, String email, HttpSession session) {
        ModelAndView mv = null;
        Usuario usuario = null;
        Contato contatoLoja = null;

        try {
            usuario = (Usuario) session.getAttribute("perfil");

            LojaService service = new LojaService();
            Loja loja = new Loja();
            loja.setNome_loja(nomeLoja);
            loja.setCnpj(cnpj);
            loja.setFk_usuario_id(usuario.getId());
            service.create(loja);

            mv = new ModelAndView("redirect:/loja/cadastradas"); //mudar o redirect aqui
        } catch (Exception ex) {
            mv = new ModelAndView("error");
        }
        return mv;
    }
    
    @RequestMapping(value = "/lojas/novo", method = RequestMethod.GET)
    public ModelAndView createLoja() {
        
        ModelAndView mv = null;
        
        LojaService ls = new LojaService();
        
        try {
            
            mv = new ModelAndView("loja/cadastrar");
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
    
    
      @RequestMapping(value = "/lojas/novo", method = RequestMethod.POST)
    public ModelAndView createLoja(Loja loja, Contato contato, HttpSession session) {
        
        ModelAndView mv = null;
        Usuario usuario = null;
        
        
        try {  
            usuario = (Usuario) session.getAttribute("perfil");

            LojaService ls = new LojaService();
            loja.setFk_usuario_id(usuario.getId());
            loja.setCnpj(loja.getCnpj());
            loja.setNome_loja(loja.getNome_loja());
            ls.create(loja);
            
            ContatoService cs = new ContatoService();
            contato.setId(contato.getId());
            contato.setFixo(contato.getFixo());
            contato.setCelular(contato.getCelular());
            contato.setWhatsapp(contato.getWhatsapp());
            contato.setEmail(contato.getEmail());
            contato.setFk_Loja_id(loja.getId());
            cs.create(contato);
            
            
            
            mv = new ModelAndView("redirect:/lojas/cadastradas");
            
        } catch (Exception ex) {
            mv = new ModelAndView("deu erro");
        }
        
        return mv;
        
        }


    @RequestMapping(value = "/lojas", method = RequestMethod.GET)
    public ModelAndView list() {
        
        ModelAndView mv = null;
        
        LojaService ls = new LojaService();
        ContatoService cs = new ContatoService();
        
        try {
            List<Loja> lojaList = ls.read(null);
            List<Contato> contatoList = cs.read(null);
            mv = new ModelAndView("loja/list");
            if(lojaList.isEmpty()){
                lojaList = null;
            }else if(contatoList.isEmpty()){
                contatoList = null;
            }
            mv.addObject("lojaList", lojaList);
            mv.addObject("contatoList", contatoList);
        } catch (Exception ex) {
               mv = new ModelAndView("deu erro");
        }
        
        return mv;

    }
    
        @RequestMapping(value = "/lojas/cadastradas", method = RequestMethod.GET)
    public ModelAndView listLojista() {
        
        ModelAndView mv = null;
        
        LojaService ls = new LojaService();
        ContatoService cs = new ContatoService();
        
        try {
            List<Loja> lojaList = ls.read(null);
            List<Contato> contatoList = cs.read(null);
            mv = new ModelAndView("loja/listLojasLojista");
            if(lojaList.isEmpty()){
                lojaList = null;
            }else if(contatoList.isEmpty()){
                contatoList = null;
            }
            mv.addObject("lojaList", lojaList);
            mv.addObject("contatoList", contatoList);
        } catch (Exception ex) {
               mv = new ModelAndView("deu erro");
        }
        
        return mv;

    }
    
    @RequestMapping(value = "/lojas/{id}/update", method = RequestMethod.GET)
    public ModelAndView getFormForUpdate(@PathVariable Long id) {
        ModelAndView mv = null;
        try {
            LojaService service = new LojaService();
            Loja lojaList = service.readById(id);
            mv = new ModelAndView("loja/editarLoja");
            mv.addObject("lojaList", lojaList);
        } catch (Exception ex) {
            mv = new ModelAndView("erro 1");
        }
        return mv;
    }
    
    @RequestMapping(value = "/lojas/{id}/update", method = RequestMethod.POST)
    public ModelAndView update(@PathVariable Long id, Loja loja, HttpSession session) {
        ModelAndView mv = null;
        Usuario usuario = null;    

        try {
            usuario = (Usuario) session.getAttribute("perfil");

            LojaService service = new LojaService();
            loja.setFk_usuario_id(usuario.getId());
            
           

            service.update(loja);
            mv = new ModelAndView("redirect:/lojas");
        } catch (Exception ex) {
            mv = new ModelAndView("erro 2");
        }
        return mv;
    }
    
      @RequestMapping(value = "/lojas/{id}/delete", method = RequestMethod.GET)
        public ModelAndView delete(@PathVariable Long id) {
        
        ModelAndView mv = null;
        try {
            LojaService service = new LojaService();
            service.delete(id);
            mv = new ModelAndView("redirect:/lojas");
            System.out.println("passou");
        } catch (Exception ex) {
            mv = new ModelAndView("error");
        }
        return mv;
        
    }
        
      @RequestMapping(value = "/lojista/lojas", method = RequestMethod.GET)
    public ModelAndView listLojas() {
        
        ModelAndView mv = null;
        
        LojaService ls = new LojaService();
        
        try {
            List<Loja> lojaList = ls.read(null);
            mv = new ModelAndView("loja/listLojasLojista");
            if (lojaList.isEmpty()) {
                lojaList = null;
            }
            mv.addObject("lojaList", lojaList);
        } catch (Exception ex) {
            mv = new ModelAndView("deu erro");
        }
        
        return mv;
        
    }
    
    
   

}
