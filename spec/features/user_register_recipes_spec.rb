require 'rails_helper'

feature 'user register recipe' do
  scenario 'successfully' do
    recipe = create(:recipe)

    visit new_recipe_path

    fill_in 'Nome da receita', with: recipe.name

    click_on 'Cadastrar Receita'

    expect(page).to have_content 'Crumble de maçã'
  end
end
