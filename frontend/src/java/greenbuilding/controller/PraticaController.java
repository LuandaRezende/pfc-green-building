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
public class PraticaController {
     @RequestMapping(value = "/telhado_verde", method = RequestMethod.GET)
    public ModelAndView directPratica() {
        ModelAndView mv = new ModelAndView("/praticas/telhadoVerde");
        return mv;
    }
    
     @RequestMapping(value = "/energia_fotovoltaica", method = RequestMethod.GET)
    public ModelAndView directPratica2() {
        ModelAndView mv = new ModelAndView("/praticas/energiaFotovoltaica");
        return mv;
    }
}