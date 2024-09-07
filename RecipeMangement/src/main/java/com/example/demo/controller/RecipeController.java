package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.model.Recipe;
import com.example.demo.service.Service;

import java.util.List;

@Controller
public class RecipeController {

    @Autowired
    private Service service; // Changed variable name to lowercase

    @GetMapping("addRecipes")
    public ModelAndView addRecipes(Recipe recipe){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("viewinsert");
        modelAndView.addObject("recipe", service.createRecipe(recipe)); // Changed variable name to lowercase
        return modelAndView;
    }

    @GetMapping("allRecipes")
    public ModelAndView allRecipes(){
        List<Recipe> list = service.getAllRecipes(); // Changed variable name to lowercase
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("allRecipes");
        modelAndView.addObject("recipes", list);
        return modelAndView;
    }

    
    

	@GetMapping("view")
	public String view() {
		return "view";
	}
	

	@GetMapping("deleteRecipeDetails")
	public ModelAndView deleteRecipeDetails(Long id) {
		Recipe recipe = service.getRecipeById(id);
		service.deleteRecipe(id);
		List<Recipe> list = service.getAllRecipes();
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("viewinsert");
		modelAndView.addObject("recipes", list);
		return modelAndView;
	}
	 @GetMapping("updateRecipedetails")
	    public ModelAndView updateRecipedetails(@RequestParam Long id) {
	        Recipe recipe = service.getRecipeById(id);
	        ModelAndView modelAndView = new ModelAndView();
	        modelAndView.setViewName("editrecipedetails");
	        modelAndView.addObject("recipe", recipe);
	        return modelAndView;
	    }

	    @GetMapping("updateRecipeinfo")
	    public ModelAndView updateRecipeinfo(Recipe recipe) {
	        service.updateRecipe(recipe);
	        List<Recipe> list = service.getAllRecipes();
	        ModelAndView modelAndView = new ModelAndView();
	        modelAndView.setViewName("allRecipes");
	        modelAndView.addObject("recipes", list);
	        return modelAndView;
	    }
}