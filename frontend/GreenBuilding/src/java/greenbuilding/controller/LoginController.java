package greenbuilding.controller;

import greenbuilding.model.entity.Categoria;
import greenbuilding.model.entity.Loja;
import greenbuilding.model.entity.Material;
import greenbuilding.model.entity.Tipo;
import greenbuilding.model.entity.Usuario;
import greenbuilding.model.service.CategoriaService;
import greenbuilding.model.service.LojaService;
import greenbuilding.model.service.MaterialService;
import greenbuilding.model.service.TipoService;
import greenbuilding.model.service.UsuarioService;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {

    @RequestMapping(value = "login", method = RequestMethod.GET)
    public ModelAndView directLogin() {
        ModelAndView mv = new ModelAndView("login");
        return mv;
    }
    
//    @RequestMapping(value = "/perfilAdm", method = RequestMethod.GET)
//    public ModelAndView redirectCadastro() {
//        ModelAndView mv = new ModelAndView("/login/perfil");
//        return mv;
//    }
    
    @RequestMapping(value = "/recuperarSenha", method = RequestMethod.GET)
    public ModelAndView directRecoverSenha() {
        ModelAndView mv = new ModelAndView("/recuperarSenha");
        return mv;
    }

    @RequestMapping(value = "/login/perfil",  method = RequestMethod.POST)
    public ModelAndView doLogin(String emailLogin, String senha, Boolean tipo, HttpSession session, HttpServletRequest req, HttpServletResponse resp) {
        ModelAndView mv = null;
        Usuario user = new Usuario();
        List<Usuario> userList = new ArrayList<>();
        Map<Long, Object> emailCriteria = new HashMap<>();
        Map<Long, Object> usuarioCriteria = new HashMap<>();
        usuarioCriteria.put(1L, emailLogin);
        usuarioCriteria.put(2L, senha);
        usuarioCriteria.put(3L, tipo);

        try {
            UsuarioService service = new UsuarioService();
            userList = service.read(usuarioCriteria);
            if (!userList.isEmpty()) {
                if (userList.get(0).getTipo().equals(true)) {
//                    MaterialService materialService = new MaterialService();
//                    CategoriaService categoriaService = new CategoriaService();
//                    TipoService tipoService =  new TipoService();
//                    LojaService lojaService = new LojaService();
//                    
//                    List<Material> materialList = materialService.read(null);
//                    List<Categoria> categoriaList = categoriaService.read(null);
//                    List<Tipo> tipoList = tipoService.read(null);
//                    List<Loja> lojaList = lojaService.read(null);
                    
                    
                    session.setAttribute("perfil", userList.get(0));
                    mv = new ModelAndView("redirect:/login/perfil");

//                    mv.addObject("materialList", materialList);
//                    mv.addObject("categoriaList", categoriaList);                    
//                    mv.addObject("tipoList", tipoList);
//                    mv.addObject("lojaList", lojaList);
//
//                  
                    
                } else {
                    session.setAttribute("perfil", userList.get(0));
                    mv = new ModelAndView("perfil");
                }
            } else {
                mv = new ModelAndView("dadosIncorretos");
            }
        } catch (Exception ex) {
            mv = new ModelAndView("dadosIncorretos");
        }
        return mv;
    }

    
    @RequestMapping(value = "/recuperarSenha", method = RequestMethod.POST)
    public ModelAndView recoverPassword(String emailLogin) {
        ModelAndView mv = null;
        Usuario user = new Usuario();
        List<Usuario> userList = new ArrayList<>();
        Map<Long, Object> usuarioCriteria = new HashMap<>();
        usuarioCriteria.put(1L, emailLogin);

         try {
            UsuarioService service = new UsuarioService();
            userList = service.read(usuarioCriteria);
            if (!userList.isEmpty()) {
                //Aeeee achou o cara manda email agora
                mv = new ModelAndView("recuperarSenha");
            } else {
                mv = new ModelAndView("dadosIncorretos");
            }
        } catch (Exception ex) {
            mv = new ModelAndView("dadosIncorretos");
        }
        return mv;
    }
}
