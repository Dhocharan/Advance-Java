package com.example.demo.dao;

import com.example.demo.model.Recipe;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;
import java.util.List;

@Repository
public class RecipeDaoImpl implements RecipeDao {

    @PersistenceContext
    private EntityManager entityManager;

    @Override
    @Transactional
    public Recipe createRecipe(Recipe recipe) {
        entityManager.persist(recipe);
        return recipe;
    }

    @Override
    public Recipe getRecipeById(Long id) {
        return entityManager.find(Recipe.class, id);
    }

    @Override
    public List<Recipe> getAllRecipes() {
        return entityManager.createQuery("SELECT r FROM Recipe r", Recipe.class).getResultList();
    }

    @Override
    @Transactional
    public void deleteRecipeById(Long id) {
        Recipe recipe = entityManager.find(Recipe.class, id);
        entityManager.remove(recipe);
    }

    @Override
    @Transactional
    public void updateRecipe(Recipe r) {
        entityManager.merge(r);
    }
}
