package com.example.demo.dao;

import java.util.List;
import com.example.demo.model.Recipe;

public interface RecipeDao {
    
    Recipe createRecipe(Recipe recipe);
    
    Recipe getRecipeById(Long id);
    
    List<Recipe> getAllRecipes();
    
    void deleteRecipeById(Long id);
    
    void updateRecipe(Recipe recipe);
}
