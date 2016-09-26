class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :cuisine
      t.string :food_type
      t.integer :people
      t.integer :preparation_time
      t.string :dificulty
      t.text :ingredients
      t.text :steps

      t.timestamps
    end
  end
end
