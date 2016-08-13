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
 	@RequestMapping(value={"/About_US"})  
public ModelAndView registerPage() {  

    return new ModelAndView("About_US");  
}
 	@RequestMapping(value={"/Contact_US"})  
 	public ModelAndView Contact_USPage() {  

 	    return new ModelAndView("Contact_US");  
 	}
 	
 	
}                                                                                                                                                                                                                                                                                                                                                                         
