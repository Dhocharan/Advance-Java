package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;


import com.example.demo.dao.RecipeDao;
import com.example.demo.model.Recipe;

@Component
public class Service {
    
    @Autowired
    private RecipeDao recipeDao;

    public Recipe createRecipe(Recipe recipe) {
        return recipeDao.createRecipe(recipe);
    }

    public Recipe getRecipeById(Long id) {
        return recipeDao.getRecipeById(id);
    }

    public List<Recipe> getAllRecipes() {
        return recipeDao.getAllRecipes();
    }

    public void deleteRecipe(Long id) {
        recipeDao.deleteRecipeById(id);
    }

    public void updateRecipe(Recipe recipe) {
        recipeDao.updateRecipe(recipe);
    }
}
