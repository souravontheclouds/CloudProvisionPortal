/**
 * 
 */
package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 * @author SR91559
 *
 */
/*@SuppressWarnings("deprecation")
public class LoginFormController extends SimpleFormController {
   
  @Override
  protected ModelAndView onSubmit(Object command) throws ServletException {
  Login login = (Login) command;
  String name = login.getUsername();
  String prestatement = "Hello";
   
  ModelAndView modelAndView = new ModelAndView(getSuccessView());
  modelAndView.addObject("name", name); 
  return modelAndView;
   
  }
}*/

@Controller
@RequestMapping("/Login.spring")
public class LoginFormController {
	
	@RequestMapping(method = RequestMethod.POST)
	
	public ModelAndView processCredentials(@RequestParam("userName")String userName,@RequestParam("password")String password) {
		
		String message = "Invalid Credentials";
		if(!userName.equals("")&&!password.equals("")) {
			
			if(userName.equals(password))
				message = "Welcome "+userName+"  !!!";
		}
		
		return new ModelAndView("success","message",message);
		
	}
	
}

