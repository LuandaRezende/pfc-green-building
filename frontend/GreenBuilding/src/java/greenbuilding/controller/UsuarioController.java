package greenbuilding.controller;

import greenbuilding.ConnectionManager;
import greenbuilding.email.EnviarEmail;
import greenbuilding.model.criteria.UsuarioCriteria;
import greenbuilding.model.dao.UsuarioDAO;
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
import java.sql.Connection;
import java.sql.SQLException;
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
public class UsuarioController {

    @RequestMapping(value = "/cadastroUsuario", method = RequestMethod.GET)
    public ModelAndView getForm() {
        ModelAndView mv = new ModelAndView("/cadastroUsuario");
        return mv;
    }

    @RequestMapping(value = "/cadastroUsuario", method = RequestMethod.POST)
    public ModelAndView create(String emailLoja, String senha, String fixo, String celular, String whatsapp, String email, HttpSession session) {
        ModelAndView mv = null;
        Usuario usuario = null;

        try {
            usuario = (Usuario) session.getAttribute("usuarioLogado");
            UsuarioService userService = new UsuarioService();
            Usuario user = new Usuario();
            user.setEmail(emailLoja);
            user.setSenha(senha);
            user.setSituacao(true);
            user.setTipo(false);
            userService.create(user);
            mv = new ModelAndView("redirect:/login"); //mudar o redirect aqui
        } catch (Exception ex) {
            mv = new ModelAndView("error");
        }
        return mv;
    }

    @RequestMapping(value = "", method = RequestMethod.POST)
    public ModelAndView read(String emailLoja, String senha, HttpSession session) {
        ModelAndView mv = null;
        Usuario usuario = null;
//        try {
//            usuario = (Usuario) session.getAttribute("");
//            UsuarioService userService = new UsuarioService();
//            Usuario user = new Usuario();
//            user.setEmail(emailLoja);
//            user.setSenha(senha);
//            user.setSituacao(true);
//            user.setTipo(false);
//            userService.create(user);
//            mv = new ModelAndView("redirect:/login"); //mudar o redirect aqui
//        } catch (Exception ex) {
//            mv = new ModelAndView("error");
//        }
        return mv;
    }

    @RequestMapping(value = "/enviarEmail", method = RequestMethod.POST)
    public ModelAndView enviarEmail(String email) throws SQLException {
        int firstPosition = 0;
        ModelAndView mv = null;
        List<Usuario> userList = new ArrayList<>();
        Map<Long,Object> criteria = new HashMap<>();
       try {
        Connection con = ConnectionManager.getInstance().getConnection();
        UsuarioDAO dao = new UsuarioDAO();
        criteria.put(UsuarioCriteria.EMAIL_EQ, email);
        userList = dao.readByCriteria(con, criteria);
        EnviarEmail enviar = new EnviarEmail();
        
        enviar.enviarEmail(email, userList.get(firstPosition).getSenha());
        mv = new ModelAndView("redirect:/login"); //mudar o redirect aqui

       

        } catch (Exception e) {
        }
        return mv;
    }

    @RequestMapping(value = "/login/perfil", method = RequestMethod.GET)
    public ModelAndView getList(HttpSession session) throws Exception {
        ModelAndView mv = null;

        if (session.getAttribute("perfil")!=null) {

            try {
                MaterialService materialService = new MaterialService();
                CategoriaService categoriaService = new CategoriaService();
                TipoService tipoService = new TipoService();
                LojaService lojaService = new LojaService();

                List<Material> materialList = materialService.read(null);
                List<Categoria> categoriaList = categoriaService.read(null);
                List<Tipo> tipoList = tipoService.read(null);
                List<Loja> lojaList = lojaService.read(null);
                if(lojaList.isEmpty()){
                    lojaList = null;
                }
                mv = new ModelAndView("/perfilAdm");

                mv.addObject("materialList", materialList);
                mv.addObject("categoriaList", categoriaList);
                mv.addObject("tipoList", tipoList);
                mv.addObject("lojaList", lojaList);

            } catch (Exception e) {
                mv = new ModelAndView("xx");
            }
        } else {
            mv = new ModelAndView("redirect:/");
        }
        return mv;
    }
    
      @RequestMapping(value = "/editarSenha", method = RequestMethod.GET)
    public ModelAndView updateSenha() {
        ModelAndView mv = new ModelAndView("senha/editarSenha");
        return mv;
    }
    
    @RequestMapping(value = "/senha/{id}/update", method = RequestMethod.GET)
    public ModelAndView editarSenha(@PathVariable Long id, String senha, HttpSession session) {
        ModelAndView mv = null;
        try {
            UsuarioService service = new UsuarioService();
            Usuario usuario = null;
            usuario = (Usuario) session.getAttribute("perfil");
            
         
            mv = new ModelAndView("redirect:senha/senhaAlterada");
            mv.addObject("usuario", usuario);
        } catch (Exception ex) {
            mv = new ModelAndView("error");
        }
        return mv;
    }
    
    @RequestMapping(value = "/senha/{id}/update", method = RequestMethod.POST)
    public ModelAndView editarSenha(@PathVariable Long id, Usuario usuario, String senha) {

        ModelAndView mv = null;
        List<Usuario> userList = new ArrayList<>();
        Map<Long,Object> criteria = new HashMap<>();
        try {
            UsuarioService service = new UsuarioService();
             Connection con = ConnectionManager.getInstance().getConnection();
             UsuarioDAO dao = new UsuarioDAO();
             criteria.put(UsuarioCriteria.SENHA_EQ, senha);
             userList = dao.readByCriteria(con, criteria);
             usuario.setSenha(usuario.getSenha());
             usuario.setId(id);
             service.update(usuario);
             mv = new ModelAndView("redirect:/senha/senhaAlterada");
        } catch (Exception ex) {
            mv = new ModelAndView("n foi");
        }
        return mv;
    }
}
