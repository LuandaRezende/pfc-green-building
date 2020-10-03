package greenbuilding.controller;

import greenbuilding.model.criteria.AnunciaCriteria;
import greenbuilding.model.entity.Anuncia;
import greenbuilding.model.entity.Material;
import greenbuilding.model.service.AnunciaService;
import greenbuilding.model.service.MaterialService;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AnunciaController {

    @RequestMapping(value = "/anuncia/lojista/novo", method = RequestMethod.GET)
    public ModelAndView createForm() {

        ModelAndView mv = null;

        AnunciaService as = new AnunciaService();

        try {

            mv = new ModelAndView("/material/cadastroLojista");

        } catch (Exception ex) {
            mv = new ModelAndView("deu erro");
        }

        return mv;

    }

    @RequestMapping(value = "/anuncia/lojista/novo", method = RequestMethod.POST)
    public ModelAndView create(Anuncia anuncia) {

        ModelAndView mv = null;

        AnunciaService as = new AnunciaService();

        try {
            anuncia.setObservacao(anuncia.getObservacao());
            anuncia.setQtd_estoque(anuncia.getQtd_estoque());
            anuncia.setValor(anuncia.getValor());

            as.create(anuncia);
            mv = new ModelAndView("redirect:/material/cadastroLojista");

        } catch (Exception ex) {
            mv = new ModelAndView("deu erro");
        }

        return mv;

    }

    @RequestMapping(value = "lojista/materiais/", method = RequestMethod.GET)
    public ModelAndView list() {

        ModelAndView mv = null;

        AnunciaService ls = new AnunciaService();

        try {
            List<Anuncia> anunciaList = ls.read(null);
            mv = new ModelAndView("material/list");
            if (anunciaList.isEmpty()) {
                anunciaList = null;
            }
            mv.addObject("anunciaList", anunciaList);
        } catch (Exception ex) {
            mv = new ModelAndView("deu erro");
        }

        return mv;

    }
    
      @RequestMapping(value = "/materiaislistado", method = RequestMethod.GET)
    public ModelAndView directListaUser1() {
 
        ModelAndView mv = null;
        
        AnunciaService ls = new AnunciaService();
        MaterialService materialService = new MaterialService();
        
        try {
            List<Anuncia> anunciaList = ls.read(null);
            mv = new ModelAndView("/usuarios/materiaisUsuarioList");
            if (anunciaList.isEmpty()) {
                anunciaList = null;
            }
            mv.addObject("anunciaList", anunciaList);
            mv.addObject("materiais", materialService.read(null));
        } catch (Exception ex) {
            mv = new ModelAndView("deu erro");
        }
        
        
        return mv;
    }
       

    @RequestMapping(value = "/pesquisar", method = RequestMethod.POST)
    public ModelAndView search(String palavra) {

        ModelAndView mv = null;

        AnunciaService ls = new AnunciaService();

        try {

            Map<Long, Object> criteria = new HashMap<>();

            criteria.put(AnunciaCriteria.NOME_MATERIAL_ILIKE, palavra);

            List<Anuncia> anunciaList = ls.read(criteria);
            mv = new ModelAndView("teste/teste");
            if (anunciaList.isEmpty()) {
                anunciaList = null;
            }
            mv.addObject("anunciaList", anunciaList);
           
        } catch (Exception ex) {
            mv = new ModelAndView("deu erro");
        }

        return mv;

    }

}
