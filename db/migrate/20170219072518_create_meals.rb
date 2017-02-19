class CreateMeals < ActiveRecord::Migration[5.0]
  def change
    create_table :meals do |t|
      t.string :mealname
      t.string :price    
      t.timestamps null: false
    end
  end
end
