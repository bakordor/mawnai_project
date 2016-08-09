package com.test.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
@Controller
public class projController {
	@RequestMapping(value={"/","/index"})  
    public ModelAndView indexPage() {  
   
        return new ModelAndView("index");  
    } 
 	@RequestMapping(value={"/register"})  
public ModelAndView registerPage() {  

    return new ModelAndView("register");  
}
}
