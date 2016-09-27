require 'rails_helper'

feature 'user register recipe' do
  scenario 'dont register empty recipes' do
    cuisine = create :cuisine
    food_type = create :food_type
    recipe = create :recipe

    visit new_recipe_path

    fill_in 'Nome da receita', with: recipe.name

    click_on 'Cadastrar'

    expect(page).not_to have_content 'Crumble de maçã'
  end
  scenario 'successfully' do
    cuisine = create :cuisine, name: 'Brasileira'
    food_type = create :food_type, name: 'Sobremesa'
    recipe = create :recipe, cuisine: cuisine, food_type: food_type

    visit new_recipe_path

    fill_in 'Nome da receita', with: recipe.name
    select recipe.cuisine.name, from: 'Cozinha'
    select recipe.food_type.name, from: 'Tipo de comida'
    fill_in 'Quantas pessoas serve', with: recipe.people
    fill_in 'Tempo de preparo', with: recipe.preparation_time
    select 'Fácil', from: 'Dificuldade'
    fill_in 'Ingredientes', with: recipe.ingredients
    fill_in 'Passo a passo', with: recipe.steps

    click_on 'Cadastrar'

    expect(page).to have_content 'Crumble de maçã'
    expect(page).to have_content 'Brasileira'
    expect(page).to have_content 'Sobremesa'
    expect(page).to have_content 'CALDA DE CARAMELO'
  end
end
