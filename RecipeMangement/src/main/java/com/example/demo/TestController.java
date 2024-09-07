package com.example.demo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.service.Service;
import com.example.demo.model.Recipe;
@Controller
public class TestController {
    
	@RequestMapping("/")
    public String Load() {
        return "view";
    }
    
    @RequestMapping("addRecipe")
    public String addRecipe() {
        return "addRecipe";
    }
    
    @RequestMapping("deleteRecipe")
    public String deleteRecipe() {
        return "deleteRecipe";
    }

    @RequestMapping("updateRecipe")
    public String updateRecipe() {
        return "updateRecipe";
    }
}
