class CreateChecks < ActiveRecord::Migration[5.0]
  def change
    create_table :checks do |t|
        t.string :payer
        t.time :times
        t.string :money
        t.string :mealname
        t.integer :number
        t.belongs_to :user
        t.timestamps null: false
    end
  end
end
