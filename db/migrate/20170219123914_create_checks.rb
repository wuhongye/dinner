class CreateChecks < ActiveRecord::Migration[5.0]
  def change
    create_table :checks do |t|
        t.belongs_to :user
        t.string :mealname
        t.integer :number
        t.string :money
        t.time :times
        t.string :payer
        t.timestamps null: false
    end
  end
end
