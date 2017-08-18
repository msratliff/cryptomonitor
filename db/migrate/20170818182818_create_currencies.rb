class CreateCurrencies < ActiveRecord::Migration[5.1]
  def change
    create_table :currencies do |t|
      t.string :name
      t.string :symbol
      t.string :name_sym
      t.float :price_0
      t.float :price_1
      t.float :price_2
      t.integer :days_doubled

      t.timestamps
    end
    add_index :currencies, :name_sym, unique: true
    
  end
end
