class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
        t.string :payer
        t.time :times
        t.string :money
        t.string :mealname
        t.integer :number
        t.belongs_to :user  
        t.string :status
        t.timestamps null: false
    end
    add_index :books, [:user_id]
  end
end
