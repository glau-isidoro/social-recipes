require 'rails_helper'

feature 'admin creates cuisine and food types' do
  scenario 'successfully cuisine' do
    cuisine = build :cuisine, name: 'Brasileira'

    visit new_cuisine_path

    fill_in 'Origem', with: cuisine.name

    click_on 'Adicionar'

    expect(page).to have_content 'Cozinha adicionada com sucesso!'
  end
  scenario 'successfully food type' do
    food_type = build :food_type

    visit new_food_type_path

    fill_in 'Categoria', with: food_type.name

    click_on 'Adicionar'

    expect(page).to have_content 'Tipo de comida adicionada com sucesso!'
  end
end
