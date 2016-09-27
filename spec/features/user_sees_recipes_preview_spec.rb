require 'rails_helper'

feature 'user sees recipes preview in root path' do
  scenario 'successfully' do
    cuisine = create :cuisine
    food_type1 = create :food_type, name: 'Brasileira'
    recipe1 = create :recipe, food_type: food_type1
    food_type2 = create :food_type, name: 'Italiana'
    recipe2 = create :recipe, food_type: food_type2
    food_type3 = create :food_type, name: 'Chinesa'
    recipe3 = create :recipe, food_type: food_type3

    visit root_path

    expect(page).to have_content('Brasileira')
    expect(page).to have_content('Italiana')
    expect(page).to have_content('Chinesa')
  end
end
