package com.crud.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.crud.modal.User;
import com.crud.repo.UserRepo;

@Controller
public class UserController {

	@Autowired
	public UserRepo repo;

	@RequestMapping("/")
	public String homepage() {
		return "home";
	}

	@RequestMapping("/req1")
	public String create() {
		return "create";
	}

	@RequestMapping("/register")
	public String createAccount(@RequestParam int id, 
			@RequestParam String name, 
			@RequestParam String role,
			@RequestParam String mobile, 
			@RequestParam String manager, 
			@RequestParam String office, 
			@RequestParam String join, 
			User u, Model m) {
		User ub = repo.save(u);
		return "success";
	}

	@RequestMapping("/view")
	public String viewsUser(Model model){    
        model.addAttribute("users",repo.findAll());
        return "view";
	}

	@RequestMapping(value="/deleteuser/{id}",method = RequestMethod.GET)   
    public String delete(@PathVariable int id){    
    	repo.deleteById(id);    
        return "redirect:/view";    
    } 
    
    @RequestMapping(value="/update/{id}",method = RequestMethod.GET)
    public String edit(@PathVariable int id, Model m) {
    	User user=repo.findById(id).get();    
        m.addAttribute("command",user); 
    	return "update";
    }
    @RequestMapping(value="/editu",method = RequestMethod.POST)    
    public String editsave(@RequestParam String name,
    		@RequestParam String role,
    		@RequestParam String mobile,
    		@RequestParam String manager,
    		@RequestParam String office, 
    		@RequestParam String join, User user,Model model){    
       repo.save(user);    
        return "redirect:/view";    
    }    
	 
}
