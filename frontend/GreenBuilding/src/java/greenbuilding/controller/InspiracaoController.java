/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package greenbuilding.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Caio Zeurgo
 */
@Controller
public class InspiracaoController {
     @RequestMapping(value = "/inspiracoes", method = RequestMethod.GET)
    public ModelAndView directInspiracao() {
        ModelAndView mv = new ModelAndView("/inspiracoes/inspiracao");
        return mv;
    }
    
     @RequestMapping(value = "/inspiracoes2", method = RequestMethod.GET)
    public ModelAndView directInspiracao2() {
        ModelAndView mv = new ModelAndView("/inspiracoes/inspiracao2");
        return mv;
    }
     @RequestMapping(value = "/inspiracoes3", method = RequestMethod.GET)
    public ModelAndView directInspiracao3() {
        ModelAndView mv = new ModelAndView("/inspiracoes/inspiracao3");
        return mv;
    }
     @RequestMapping(value = "/inspiracoes4", method = RequestMethod.GET)
    public ModelAndView directInspiracao4() {
        ModelAndView mv = new ModelAndView("/inspiracoes/inspiracao4");
        return mv;
    }
     @RequestMapping(value = "/inspiracoes5", method = RequestMethod.GET)
    public ModelAndView directInspiracao5() {
        ModelAndView mv = new ModelAndView("/inspiracoes/inspiracao5");
        return mv;
    }
    
}
