
package greenbuilding.controller;

import greenbuilding.model.entity.Contato;
import greenbuilding.model.entity.Loja;
import greenbuilding.model.service.ContatoService;
import greenbuilding.model.service.LojaService;
import java.util.List;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

public class ContatoController {
   
    
    @RequestMapping(value = "/lojas/novo", method = RequestMethod.POST)
    public ModelAndView create(Contato contato) throws Exception {
        ModelAndView mv = null;

        Loja loja = null;
         try {
            LojaService userService = new LojaService();
            ContatoService service = new ContatoService();
            contato.setFixo(contato.getFixo());
//            contato.setCelular(celular);
//            contato.setWhatsapp(whatsapp);
//            contato.setEmail(email);
            contato.setFk_Loja_id(contato.getFk_Loja_id());
            service.create(contato);
        } catch (Exception e) {
        }
        
        
//        try {
//            usuario = (Usuario) session.getAttribute("perfil");
//            UsuarioService userService = new UsuarioService();
//            ContatoService service = new ContatoService();
//            Contato contato = new Contato();
//            contato.setFixo(fixo);
//            contato.setCelular(celular);
//            contato.setWhatsapp(whatsapp);
//            contato.setEmail(email);
//            contato.setFk_Loja_id(loja.getFk_usuario_id());
//            mv = new ModelAndView("perfil"); //mudar o redirect aqui
//        } catch (Exception ex) {
//            mv = new ModelAndView("error");
//        }
        return mv;
    }
    
    @RequestMapping(value = "/lojas", method = RequestMethod.GET)
    public ModelAndView list() {
        
        ModelAndView mv = null;
        
        ContatoService cs = new ContatoService();
        
        try {
            List<Contato> contatoList = cs.read(null);
            mv = new ModelAndView("loja/list");
            if(contatoList.isEmpty()){
                contatoList = null;
            }
            mv.addObject("contatoList", contatoList);
        } catch (Exception ex) {
               mv = new ModelAndView("deu erro");
        }
        
        return mv;

    }
    
        @RequestMapping(value = "/lojas/cadastradas", method = RequestMethod.GET)
    public ModelAndView listContato() {
        
        ModelAndView mv = null;
        
        ContatoService cs = new ContatoService();
        
        try {
            List<Contato> contatoList = cs.read(null);
            mv = new ModelAndView("loja/listLojasLojista");
            if(contatoList.isEmpty()){
                contatoList = null;
            }
            mv.addObject("contatoList", contatoList);
        } catch (Exception ex) {
               mv = new ModelAndView("deu erro");
        }
        
        return mv;

    }
}
